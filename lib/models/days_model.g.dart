// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'days_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DaysModel _$DaysModelFromJson(Map<String, dynamic> json) => DaysModel(
      eventId: (json['event_id'] as num).toInt(),
      date: json['date'] as String,
      startHour: json['start_hour'] as String,
      index: (json['index'] as num).toInt(),
      id: (json['id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$DaysModelToJson(DaysModel instance) => <String, dynamic>{
      'id': instance.id,
      'event_id': instance.eventId,
      'date': instance.date,
      'start_hour': instance.startHour,
      'index': instance.index,
    };
