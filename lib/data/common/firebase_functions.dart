import 'dart:convert';

import 'package:cloud_functions/cloud_functions.dart';
import 'package:flutternba/common/util/result.dart';
import 'package:flutternba/data/scores/remote/box_score_response.dart';

class FirebaseRemoteApi {
  final FirebaseFunctions _functions;

  FirebaseRemoteApi(this._functions);

  Future<Result<GameBoxScoreResponse>> getBoxScore(int gameId) async {
    final callResult = await runCatchingAsync(
      () => _functions.httpsCallable("getBoxScore").call({"gameId": gameId}),
    );

    return callResult.mapValue(
      (value) =>
          GameBoxScoreResponse.fromJson(jsonDecode(jsonEncode(value.data))),
    );
  }
}
