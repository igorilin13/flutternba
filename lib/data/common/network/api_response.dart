import 'package:json_annotation/json_annotation.dart';

part 'api_response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class ApiResponse<T> {
  final T data;
  final MetaDataResponse meta;

  ApiResponse({required this.data, required this.meta});

  factory ApiResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$ApiResponseFromJson(json, fromJsonT);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class MetaDataResponse {
  final int totalPages;
  final int currentPage;
  final int? nextPage;
  final int perPage;
  final int totalCount;

  MetaDataResponse({
    required this.totalPages,
    required this.currentPage,
    this.nextPage,
    required this.perPage,
    required this.totalCount,
  });

  factory MetaDataResponse.fromJson(Map<String, dynamic> json) =>
      _$MetaDataResponseFromJson(json);
}