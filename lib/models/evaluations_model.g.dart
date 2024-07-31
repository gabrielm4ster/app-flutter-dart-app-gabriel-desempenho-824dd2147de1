// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'evaluations_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EvaluationsModel _$EvaluationsModelFromJson(Map<String, dynamic> json) =>
    EvaluationsModel(
      participantsId: (json['participants_id'] as num).toInt(),
      modalityId: (json['modality_id'] as num).toInt(),
      judge: (json['judge'] as num).toInt(),
      date: json['date'] as String,
      id: (json['id'] as num?)?.toInt(),
      eventId: (json['event_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$EvaluationsModelToJson(EvaluationsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'event_id': instance.eventId,
      'participants_id': instance.participantsId,
      'modality_id': instance.modalityId,
      'judge': instance.judge,
      'date': instance.date,
    };
