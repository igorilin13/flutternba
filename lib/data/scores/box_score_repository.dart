import 'package:flutternba/common/util/result.dart';
import 'package:flutternba/data/common/firebase_functions.dart';
import 'package:flutternba/data/scores/box_score_models.dart';

class BoxScoreRepository {
  final FirebaseRemoteApi _remoteApi;

  BoxScoreRepository(this._remoteApi);

  Future<Result<GameBoxScore>> getBoxScore(int gameId) {
    return _remoteApi.getBoxScore(gameId);
  }
}
