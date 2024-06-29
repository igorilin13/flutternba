import 'dart:convert';

import 'package:cloud_functions/cloud_functions.dart';
import 'package:flutternba/common/util/result.dart';
import 'package:flutternba/data/scores/box_score_models.dart';

class FirebaseRemoteApi {
  final FirebaseFunctions _functions;

  FirebaseRemoteApi(this._functions);

  Future<Result<GameBoxScore>> getBoxScore(int gameId) async {
    final callResult = await runCatchingAsync(
      () => _functions.httpsCallable("getBoxScore").call({"gameId": gameId}),
    );

    return callResult.mapValue(
      (value) => GameBoxScore.fromJson(jsonDecode(jsonEncode(value.data))),
    );
  }
}
