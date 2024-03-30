// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ball_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BallApiResponse<T> _$BallApiResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    BallApiResponse<T>(
      data: fromJsonT(json['data']),
      meta: json['meta'] == null
          ? null
          : MetaDataResponse.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BallApiResponseToJson<T>(
  BallApiResponse<T> instance,
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
