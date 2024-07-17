Flutter mobile app (iOS/Android) that displays NBA stats.

Features:

- Regular season standings
- Playoff bracket
- Playoff series overview
- Team schedules & scores
- League schedules & scores
- Box scores
- Team season stats
- Favorite team selection
- Hide scores mode
- Game reminders

See video demo on [Youtube](https://youtu.be/NdkIE5Gyf6U)

# Technical details

## 1. Backend

Firebase is used as the backend. A cloud function runs on a regular schedule, pulls data from third-party APIs/sources and saves it to the Firestore database. The app then reads data from Firestore. The exception here is boxscores which are provided directly via a callable cloud function.

The decision to use Firebase as an intermediary source was made so that third-party APIs can be swapped out easily, and it also limits the costs because Firebase has a fairly generous free tier.


## 2. Frontend

Flutter, Bloc, RxDart + Clean Architecture principles. GetIt for DI. Material design UI with adaptations for iOS.

Architecture overview:

<img src="https://github.com/igorilin13/flutternba/blob/main/architecture.png?raw=true" alt="Scheme" width="336" height="400" />

This is based on the popular [Guide to app architecture](https://developer.android.com/topic/architecture) with some adaptations for Flutter/Dart. This type of architecture has proven to work well in production for most projects.

Let's go over each layer of the architecture in detail, starting from the bottom, using a simple example: implementing a screen that displays a list of NBA teams.

### 1. Data Layer

The responsibility of the Data Layer is to provide data while encapsulating the details of where that data is coming from.

It is broken down into two sub-layers: Data Sources and Repositories.

#### 1a. Data Sources

The job of a Data Source is to retrieve data from a particular source. There are generally 3 types of data sources:

- Remote (REST API, Firebase, etc)
- Local persistence (SQLite, Prefs, etc)
- Runtime cache

There are cases where it's beneficial to remember the result of an API call while the app is running because that data is unlikely to change, but it might not be necessary to save that data to a local persistence source like SQLite. This is where Runtime cache comes in. Typically, it's not worth extracting it into a separate class because it would only introduce unneded boilerplate, and instead it can be a simple variable in the repository.

#### 1b. Repositories

The job of a Repository is to manage data sources. Generally, a Repository has a getSomeDataType() method which returns a Future or a Stream and the details of where that data is coming from are hidden.

Repository can do things like:

- Decide that the local source (SQLite) should be the source of truth and expose it to outer layers, while determining when and how to synchronize it with the remote source (Backend). For example, updating the data with a 1-day timeout or upon receiving a sync push.
- Decide that there is no need to involve other sources and each request should query the remote source (Backend) directly.
- Query the remote source (Backend), save the result to a local variable (Runtime cache), and return it instead of making new requests.

Using Firebase Firestore is a little bit trickier because generally it should be considered a remote source but it also has local persistence and you can query the cached data specifically via GetOptions.

However, the general idea doesn't change: Repository decides where and how to get data.

#### Q: What about model classes?

There are generally 2 approaches:

1. Separate classes for each data source (REST API responses, SQLite models, etc) + a separate model class that is exposed to the outer layer.
2. One class that combines all of the above.

The second approach is not recommended because it can quickly become hard to maintain. The first approach is great but it can introduce too much boilerplate.

So why not combine both? Since these models work with the same data type (like an NBA Team), they will share many fields. But there can also be differences.

For example, the API response you get from backend may not be in the exact format you need. In this case, there should certainly be separate classes for the backend JSON response and for the model that will be exposed to the outer layer of architecture.

However, if the API response is already structured the way you need, it's ok to combine these classes, because otherwise you would have 2 classes that are exactly the same. You would just need to make sure to create separate classes if some differences are introduced later.

Since all of this is encapsulated in the Data Layer, small refactoring like this is easy to do with minimal changes.

#### Putting it together

For the sake of our example (a screen that displays the list of NBA teams), let's say we want to load teams from REST API (the response is slightly different from what we need) and cache the result while the app is running.

This is not an actual scenario that's implemented in the app, but it's an example.

```dart
class TeamResponse {
  // Model the JSON response
}

class Team {
  // Model that is exposed to the UI / outer layers

  factory Team.fromRemoteResponse(TeamResponse response) {
    // Converts the remote response to the model
  }
}

class RemoteTeamSource {
  Future<Result<List<TeamResponse>>> getTeams() async {
    // Fetch data from remote source
  }
}

class TeamRepository {
  List<Team>? _cachedTeams;

  Future<Result<List<Team>>> getTeams() async {
    // if already loaded, return the cached result
    if (_cachedTeams != null) {
      return Future.value(Result.success(_cachedTeams!));
    } else {
      // Otherwise fetch from remote,
      final fromRemote = (await _remoteTeamSource.getTeams())
          // Convert the response to Model class
          .mapValue((teams) => teams.mapList(Team.fromRemoteResponse));
      if (fromRemote is Success) {
        // Cache the result
        _cachedTeams = fromRemote.value;
      }
      return fromRemote;
    }
  }
}
```

### 2. Domain Layer (optional)

Domain Layer defines business logic; this is the broad definition.

Domain Layer can help when you need to share some logic between multiple screens (for example, formatting game timestamp to a display string). It can also really help in simplifying State Holder classes of complex screens.

Making this layer optional can be a topic of debate. But in a lot of cases the domain layer would not add anything meaningful and instead would just be extra boilerplate, so this is why it makes sense to make it optional.

Note: an argument can be made that Model classes belong entirely in the Domain Layer instead of Data Layer and that does make sense. However, there is no significant difference in terms of maintainability and in practice it's more convenient to combine both approaches.

For the sake of our example, let's say we have a requirement to present teams either as a single list or grouped by conference, and we will implement this logic in the Domain Layer.

```dart
enum TeamListType {
  all,
  byConference,
}

class TeamListGroup {
  final String? title; // e.g. "Western Conference"
  final List<Team> teams;
}

class GetTeamsUseCase {
  Future<Result<List<TeamListGroup>>> call(TeamListType type) async {
    return (await _teamRepository.getTeams())
        .mapValue((teams) => _groupTeams(teams, type));
  }

  List<TeamListGroup> _groupTeams(List<Team> teams, TeamListType type) {
    // group teams, depending on type
  }
}
```

### 3. UI Layer

#### 3a. State Holders

State Holders provide all necessary data to display the UI and they know which Repository/Domain to ask for that data.

This is implemented with Cubits (from the Blocs library) and there is generally one Cubit per screen.

Each screen is modeled with a ScreenState class (usually sealed). This ScreenState class defines the state of the UI at any given point in time.

Each Screen Cubit extends [BaseCubit](https://github.com/igorilin13/flutternba/blob/main/lib/ui/core/cubit/base_cubit.dart) and implements buildStateStream() method. This method is responsible for combining pieces of data and mapping them into a ScreenState.

#### 3b. UI (Screens)

The final layer of the architecture is responsible for rendering ScreenState to actual UI via the Flutter Framework.

Let's finish our example of implementing the screen that displays NBA teams.

```dart
@freezed
sealed class NbaTeamsState with _$NbaTeamsState {
  const factory NbaTeamsState.loading() = LoadingState;

  const factory NbaTeamsState.error() = ErrorState;

  const factory NbaTeamsState.displayTeams(
      List<TeamListGroup> groups,
      ) = DisplayTeamsState;
}

class NbaTeamsCubit extends BaseCubit<NbaTeamsState> {
  final GetTeamsUseCase _getTeamsUseCase;

  final BehaviorSubject<TeamListType> _listType =
  BehaviorSubject.seeded(TeamListType.all);

  NbaTeamsCubit(this._getTeamsUseCase) : super(const NbaTeamsState.loading()) {
    disposeControllersOnClose([_listType]);
  }

  @override
  Stream<NbaTeamsState> buildStateStream() {
    return _listType
        .switchMap((type) => _getTeamsUseCase(type).asStream())
        .map(
          (teamsResult) => teamsResult.fold(
        onSuccess: (teams) => NbaTeamsState.displayTeams(teams),
        onFailure: (_) => const NbaTeamsState.error(),
      ),
    );
  }

  void changeListType(TeamListType type) {
    _listType.add(type);
  }
}

class NbaTeamsScreen extends StatelessWidget {
  const NbaTeamsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NbaTeamsCubit(locator()),
      child: BlocBuilder<NbaTeamsCubit, NbaTeamsState>(
        builder: (context, state) {
          // build UI for each state
          return const Placeholder();
        },
      ),
    );
  }
}
```