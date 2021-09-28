import 'package:json_annotation/json_annotation.dart';

import 'login_content.dart';

part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse {
  @JsonKey(name: 'Status')
  final int statusCode;

  @JsonKey(name: 'Message')
  final String message;

  @JsonKey(name: 'Content')
  final LoginContent content;

  LoginResponse(this.statusCode, this.message, this.content);

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);
}
