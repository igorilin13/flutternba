import 'package:json_annotation/json_annotation.dart';

part 'ball_api_response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class BallApiResponse<T> {
  final T data;
  final MetaDataResponse? meta;

  BallApiResponse({required this.data, this.meta});

  factory BallApiResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$BallApiResponseFromJson(json, fromJsonT);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class MetaDataResponse {
  final int? nextCursor;

  MetaDataResponse(this.nextCursor);

  factory MetaDataResponse.fromJson(Map<String, dynamic> json) =>
      _$MetaDataResponseFromJson(json);
}
