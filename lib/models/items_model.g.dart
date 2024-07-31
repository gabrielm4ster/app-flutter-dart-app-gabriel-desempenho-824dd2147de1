// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'items_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItemsModel _$ItemsModelFromJson(Map<String, dynamic> json) => ItemsModel(
      subCriteriaId: (json['sub_criteria_id'] as num).toInt(),
      name: json['name'] as String,
      aspect: json['aspect'] as String,
      weight: json['weight'] as String,
      id: (json['id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ItemsModelToJson(ItemsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sub_criteria_id': instance.subCriteriaId,
      'name': instance.name,
      'aspect': instance.aspect,
      'weight': instance.weight,
    };
