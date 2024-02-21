// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiResponse<T> _$ApiResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    ApiResponse<T>(
      data: fromJsonT(json['data']),
      meta: json['meta'] == null
          ? null
          : MetaDataResponse.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiResponseToJson<T>(
  ApiResponse<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'data': toJsonT(instance.data),
      'meta': instance.meta,
    };

MetaDataResponse _$MetaDataResponseFromJson(Map<String, dynamic> json) =>
    MetaDataResponse(
      json['next_cursor'] as int?,
    );

Map<String, dynamic> _$MetaDataResponseToJson(MetaDataResponse instance) =>
    <String, dynamic>{
      'next_cursor': instance.nextCursor,
    };
