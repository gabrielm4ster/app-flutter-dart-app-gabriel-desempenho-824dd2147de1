// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instituitions_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InstituitionsModel _$InstituitionsModelFromJson(Map<String, dynamic> json) =>
    InstituitionsModel(
      name: json['name'] as String,
      logo: json['logo'] as String,
      id: (json['id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$InstituitionsModelToJson(InstituitionsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'logo': instance.logo,
    };
