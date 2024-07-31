// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      name: json['name'] as String,
      lastName: json['last_name'] as String,
      birthday: json['birthday'] as String,
      gender: json['gender'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      interfaceLanguage: (json['inter_face_language'] as num).toInt(),
      role: (json['role'] as num).toInt(),
      id: (json['id'] as num?)?.toInt(),
      photo: json['photo'] as String?,
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'last_name': instance.lastName,
      'birthday': instance.birthday,
      'gender': instance.gender,
      'photo': instance.photo,
      'email': instance.email,
      'password': instance.password,
      'inter_face_language': instance.interfaceLanguage,
      'role': instance.role,
    };
