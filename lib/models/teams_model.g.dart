// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teams_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TeamsModel _$TeamsModelFromJson(Map<String, dynamic> json) => TeamsModel(
      name: json['name'] as String,
      id: (json['id'] as num?)?.toInt(),
      logo: json['logo'] as String?,
    );

Map<String, dynamic> _$TeamsModelToJson(TeamsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'logo': instance.logo,
    };
