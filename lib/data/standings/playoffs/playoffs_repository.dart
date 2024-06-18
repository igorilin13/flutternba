import 'package:flutternba/common/util/result.dart';
import 'package:flutternba/data/common/firestore/firebase_db.dart';
import 'package:flutternba/data/common/firestore/firestore_ext.dart';
import 'package:flutternba/data/standings/playoffs/playoff_models.dart';

class PlayoffsRepository {
  final AppFirebaseDb _db;

  PlayoffsRepository(this._db);

  Future<Result<List<PlayoffRound>>> getPlayoffRounds() {
    return _db.getPlayoffRounds().getResult(
          (doc) => PlayoffRound.fromJson(doc.data()),
        );
  }
}
