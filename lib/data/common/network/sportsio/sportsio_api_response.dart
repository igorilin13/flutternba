import 'package:json_annotation/json_annotation.dart';

part 'sportsio_api_response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class SportsIoApiResponse<T> {
  final T response;

  SportsIoApiResponse({required this.response});

  factory SportsIoApiResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$SportsIoApiResponseFromJson(json, fromJsonT);
}
