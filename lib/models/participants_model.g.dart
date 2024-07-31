// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'participants_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ParticipantsModel _$ParticipantsModelFromJson(Map<String, dynamic> json) =>
    ParticipantsModel(
      userId: (json['user_id'] as num).toInt(),
      teamId: (json['team_id'] as num).toInt(),
      modalityId: (json['modality_id'] as num).toInt(),
      id: (json['id'] as num?)?.toInt(),
      instituionId: (json['instituion_id'] as num?)?.toInt(),
      position: json['position'] as String?,
    );

Map<String, dynamic> _$ParticipantsModelToJson(ParticipantsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'team_id': instance.teamId,
      'instituion_id': instance.instituionId,
      'modality_id': instance.modalityId,
      'position': instance.position,
    };
