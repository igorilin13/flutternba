import 'package:flutternba/common/util/result.dart';
import 'package:flutternba/data/common/firestore/firebase_db.dart';
import 'package:flutternba/data/common/firestore/firestore_ext.dart';
import 'package:flutternba/data/standings/standings_model.dart';

class StandingsRepository {
  final AppFirebaseDb _db;

  StandingsRepository(this._db);

  Future<Result<List<TeamStandings>>> getStandings() async {
    return _db.getStandings().getResult(
          (doc) => TeamStandings.fromJson(doc.data()),
          throwIfEmpty: true,
        );
  }
}
