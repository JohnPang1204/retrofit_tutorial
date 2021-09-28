// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginContent _$LoginContentFromJson(Map<String, dynamic> json) {
  return LoginContent(
    json['userName'] as String,
    json['Id'] as int,
    json['Phone'] as String,
    json['Name'] as String,
    json['Photo'] as String,
  );
}

Map<String, dynamic> _$LoginContentToJson(LoginContent instance) =>
    <String, dynamic>{
      'userName': instance.username,
      'Id': instance.id,
      'Phone': instance.phone,
      'Name': instance.name,
      'Photo': instance.photo,
    };
