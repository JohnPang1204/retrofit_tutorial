import 'package:json_annotation/json_annotation.dart';

part 'login_content.g.dart';

@JsonSerializable()
class LoginContent {
  @JsonKey(name: 'userName')
  final String username;

  @JsonKey(name: 'Id')
  final int id;

  @JsonKey(name: 'Phone')
  final String phone;

  @JsonKey(name: 'Name')
  final String name;

  @JsonKey(name: 'Photo')
  final String photo;

  LoginContent(this.username, this.id, this.phone, this.name, this.photo);

  factory LoginContent.fromJson(Map<String, dynamic> json) =>
      _$LoginContentFromJson(json);

  Map<String, dynamic> toJson() => _$LoginContentToJson(this);
}
