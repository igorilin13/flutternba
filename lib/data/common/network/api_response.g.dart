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
      meta: MetaDataResponse.fromJson(json['meta'] as Map<String, dynamic>),
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
      totalPages: json['total_pages'] as int,
      currentPage: json['current_page'] as int,
      nextPage: json['next_page'] as int?,
      perPage: json['per_page'] as int,
      totalCount: json['total_count'] as int,
    );

Map<String, dynamic> _$MetaDataResponseToJson(MetaDataResponse instance) =>
    <String, dynamic>{
      'total_pages': instance.totalPages,
      'current_page': instance.currentPage,
      'next_page': instance.nextPage,
      'per_page': instance.perPage,
      'total_count': instance.totalCount,
    };
