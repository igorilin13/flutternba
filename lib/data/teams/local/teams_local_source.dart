import 'package:flutternba/data/common/db/app_db.dart';
import 'package:flutternba/data/teams/local/team_db_entity.dart';
import 'package:sqflite/sqflite.dart';

import '../team_model.dart';

class TeamsLocalDataSource {
  final AppDatabase _appDatabase;

  TeamsLocalDataSource(this._appDatabase);

  Future<List<TeamDbEntity>> getTeams() async {
    final db = await _appDatabase.get();
    final List<Map<String, dynamic>> maps = await db.query(
      AppDatabase.teamsTableName,
    );
    return List.generate(maps.length, (i) {
      return TeamDbEntity.fromMap(maps[i]);
    });
  }

  Future<void> replace(List<Team> teams) async {
    final db = await _appDatabase.get();
    db.transaction((txn) async {
      final batch = txn.batch();

      batch.execute("DELETE FROM ${AppDatabase.teamsTableName}");

      for (var team in teams) {
        batch.insert(
          "teams",
          TeamDbEntity.fromTeamModel(team).toMap(),
          conflictAlgorithm: ConflictAlgorithm.replace,
        );
      }

      batch.commit();
    });
  }
}
