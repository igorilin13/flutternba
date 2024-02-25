import 'package:drift/drift.dart';
import 'package:flutternba/data/common/db/app_db.dart';

import '../team_model.dart';

class TeamsLocalDataSource {
  final AppDatabase _database;

  TeamsLocalDataSource(this._database);

  Future<List<TeamsTableData>> getTeams() async {
    return _database.select(_database.teamsTable).get();
  }

  void replace(List<Team> teams) async {
    await _database.transaction(() async {
      await _database.delete(_database.teamsTable).go();

      for (var team in teams) {
        await _insert(team);
      }
    });
  }

  Future<int> _insert(Team team) {
    return _database.into(_database.teamsTable).insert(
          TeamsTableCompanion.insert(
            id: team.id,
            name: team.name,
            fullName: team.fullName,
          ),
          mode: InsertMode.insertOrReplace,
        );
  }
}
