// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_criteria_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubCriteriaModel _$SubCriteriaModelFromJson(Map<String, dynamic> json) =>
    SubCriteriaModel(
      name: json['name'] as String,
      points: json['points'] as String,
      id: (json['id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$SubCriteriaModelToJson(SubCriteriaModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'points': instance.points,
    };
