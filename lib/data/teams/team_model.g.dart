// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TeamImpl _$$TeamImplFromJson(Map<String, dynamic> json) => _$TeamImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      fullName: json['fullName'] as String,
      abbreviation: json['abbreviation'] as String,
      color: json['color'] as String,
    );

Map<String, dynamic> _$$TeamImplToJson(_$TeamImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'fullName': instance.fullName,
      'abbreviation': instance.abbreviation,
      'color': instance.color,
    };
