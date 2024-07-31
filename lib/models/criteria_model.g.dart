// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'criteria_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CriteriaModel _$CriteriaModelFromJson(Map<String, dynamic> json) =>
    CriteriaModel(
      name: json['name'] as String,
      points: json['points'] as String,
      id: (json['id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$CriteriaModelToJson(CriteriaModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'points': instance.points,
    };
