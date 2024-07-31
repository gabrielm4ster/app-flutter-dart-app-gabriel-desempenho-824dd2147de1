// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'judgments_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JudgmentsModel _$JudgmentsModelFromJson(Map<String, dynamic> json) =>
    JudgmentsModel(
      evaluationId: (json['evaluation_id'] as num).toInt(),
      itemId: (json['itemId'] as num).toInt(),
      id: (json['id'] as num?)?.toInt(),
      attempt: (json['attempt'] as num?)?.toInt(),
      correctAttempt: (json['correct_attempt'] as num?)?.toInt(),
      failAttempt: (json['fail_attempt'] as num?)?.toInt(),
      score: (json['score'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$JudgmentsModelToJson(JudgmentsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'evaluation_id': instance.evaluationId,
      'itemId': instance.itemId,
      'attempt': instance.attempt,
      'correct_attempt': instance.correctAttempt,
      'fail_attempt': instance.failAttempt,
      'score': instance.score,
    };
