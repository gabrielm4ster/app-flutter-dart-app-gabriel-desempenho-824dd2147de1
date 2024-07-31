// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'events_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventsModel _$EventsModelFromJson(Map<String, dynamic> json) => EventsModel(
      name: json['name'] as String,
      logo: json['logo'] as String,
      id: (json['id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$EventsModelToJson(EventsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'logo': instance.logo,
    };
