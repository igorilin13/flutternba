import 'package:drift/drift.dart';

import '../../common/db/app_db.dart';
import '../team_model.dart';

class TeamsTable extends Table {
  IntColumn get id => integer()();
  TextColumn get name => text()();
  TextColumn get fullName => text()();
}

extension TeamsTableDataExtension on TeamsTableData {
  Team toModel() {
    return Team(
      id: id,
      name: name,
      fullName: fullName,
    );
  }
}
