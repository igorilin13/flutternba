// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sportsio_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SportsIoApiResponse<T> _$SportsIoApiResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    SportsIoApiResponse<T>(
      response: fromJsonT(json['response']),
    );

Map<String, dynamic> _$SportsIoApiResponseToJson<T>(
  SportsIoApiResponse<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'response': toJsonT(instance.response),
    };
