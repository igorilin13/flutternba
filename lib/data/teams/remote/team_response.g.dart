// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TeamResponse _$TeamResponseFromJson(Map<String, dynamic> json) => TeamResponse(
      id: json['id'] as int,
      fullName: json['full_name'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$TeamResponseToJson(TeamResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'full_name': instance.fullName,
    };
