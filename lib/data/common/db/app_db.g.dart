// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_db.dart';

// ignore_for_file: type=lint
class $TeamsTableTable extends TeamsTable
    with TableInfo<$TeamsTableTable, TeamsTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TeamsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _fullNameMeta =
      const VerificationMeta('fullName');
  @override
  late final GeneratedColumn<String> fullName = GeneratedColumn<String>(
      'full_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, name, fullName];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'teams_table';
  @override
  VerificationContext validateIntegrity(Insertable<TeamsTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('full_name')) {
      context.handle(_fullNameMeta,
          fullName.isAcceptableOrUnknown(data['full_name']!, _fullNameMeta));
    } else if (isInserting) {
      context.missing(_fullNameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  TeamsTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TeamsTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      fullName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}full_name'])!,
    );
  }

  @override
  $TeamsTableTable createAlias(String alias) {
    return $TeamsTableTable(attachedDatabase, alias);
  }
}

class TeamsTableData extends DataClass implements Insertable<TeamsTableData> {
  final int id;
  final String name;
  final String fullName;
  const TeamsTableData(
      {required this.id, required this.name, required this.fullName});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['full_name'] = Variable<String>(fullName);
    return map;
  }

  TeamsTableCompanion toCompanion(bool nullToAbsent) {
    return TeamsTableCompanion(
      id: Value(id),
      name: Value(name),
      fullName: Value(fullName),
    );
  }

  factory TeamsTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TeamsTableData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      fullName: serializer.fromJson<String>(json['fullName']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'fullName': serializer.toJson<String>(fullName),
    };
  }

  TeamsTableData copyWith({int? id, String? name, String? fullName}) =>
      TeamsTableData(
        id: id ?? this.id,
        name: name ?? this.name,
        fullName: fullName ?? this.fullName,
      );
  @override
  String toString() {
    return (StringBuffer('TeamsTableData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('fullName: $fullName')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, fullName);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TeamsTableData &&
          other.id == this.id &&
          other.name == this.name &&
          other.fullName == this.fullName);
}

class TeamsTableCompanion extends UpdateCompanion<TeamsTableData> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> fullName;
  final Value<int> rowid;
  const TeamsTableCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.fullName = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  TeamsTableCompanion.insert({
    required int id,
    required String name,
    required String fullName,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        name = Value(name),
        fullName = Value(fullName);
  static Insertable<TeamsTableData> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? fullName,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (fullName != null) 'full_name': fullName,
      if (rowid != null) 'rowid': rowid,
    });
  }

  TeamsTableCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<String>? fullName,
      Value<int>? rowid}) {
    return TeamsTableCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      fullName: fullName ?? this.fullName,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (fullName.present) {
      map['full_name'] = Variable<String>(fullName.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TeamsTableCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('fullName: $fullName, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  late final $TeamsTableTable teamsTable = $TeamsTableTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [teamsTable];
}
