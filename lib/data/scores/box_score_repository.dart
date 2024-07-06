import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutternba/common/util/result.dart';
import 'package:flutternba/data/common/firebase_functions.dart';
import 'package:flutternba/data/common/firestore/firebase_db.dart';
import 'package:flutternba/data/common/firestore/firestore_ext.dart';
import 'package:flutternba/data/games/game_model.dart';
import 'package:flutternba/data/scores/box_score_models.dart';

class BoxScoreRepository {
  final FirebaseRemoteApi _remoteApi;
  final AppFirebaseDb _db;

  BoxScoreRepository(this._remoteApi, this._db);

  Stream<Result<GameBoxScoreModel>> getBoxScore(int gameId) async* {
    yield const Result.success(GameBoxScoreModel.loading(null));

    final cachedGameInfoFuture = _db.getGame(gameId).getResultOpt(
          (doc) => Game.fromJson(doc.data()!),
          const GetOptions(source: Source.cache),
        );
    final cachedGameInfo = (await cachedGameInfoFuture).valueOrNull;

    if (cachedGameInfo != null) {
      yield Result.success(GameBoxScoreModel.loading(cachedGameInfo));
    }

    final apiResult = await _remoteApi.getBoxScore(gameId);
    yield apiResult.mapValue((response) {
      return response.home != null && response.away != null
          ? GameBoxScoreModel.hasScore(
              response.game,
              response.home!,
              response.away!,
            )
          : GameBoxScoreModel.scheduled(response.game);
    });
  }
}
