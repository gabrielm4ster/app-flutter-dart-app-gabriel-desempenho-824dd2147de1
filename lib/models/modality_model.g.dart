// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modality_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ModalityModel _$ModalityModelFromJson(Map<String, dynamic> json) =>
    ModalityModel(
      name: json['name'] as String,
      id: (json['id'] as num?)?.toInt(),
      logo: json['logo'] as String?,
    );

Map<String, dynamic> _$ModalityModelToJson(ModalityModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'logo': instance.logo,
    };
