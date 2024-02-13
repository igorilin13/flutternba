import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class AppDatabase {
  static const String _dbName = "app.db";
  static const int _dbVersion = 1;

  static const String teamsTableName = "teams";

  static Database? _db;

  Future<Database> get() async {
    if (_db != null) {
      return _db!;
    }

    _db = await openDatabase(
      join(await getDatabasesPath(), _dbName),
      onCreate: (db, version) {
        return db.execute(
          "CREATE TABLE $teamsTableName(id INTEGER PRIMARY KEY,"
          " name TEXT, fullName TEXT)",
        );
      },
      version: _dbVersion,
    );
    return _db!;
  }
}
