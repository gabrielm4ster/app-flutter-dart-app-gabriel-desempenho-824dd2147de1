import 'package:json_annotation/json_annotation.dart';
part 'judgments_model.g.dart';

@JsonSerializable()
class JudgmentsModel {
  JudgmentsModel({
    required this.evaluationId,
    required this.itemId,
    this.id,
    this.attempt,
    this.correctAttempt,
    this.failAttempt,
    this.score,
  });

  int? id;
  @JsonKey(name: 'evaluation_id')
  int evaluationId;
  int itemId;
  int? attempt;
  @JsonKey(name: 'correct_attempt')
  int? correctAttempt;
  @JsonKey(name: 'fail_attempt')
  int? failAttempt;
  double? score;

  JudgmentsModel copyWith({
    int? id,
    int? evaluationId,
    int? itemId,
    int? attempt,
    int? correctAttempt,
    int? failAttempt,
    double? score,
  }) {
    return JudgmentsModel(
      id: id ?? this.id,
      evaluationId: evaluationId ?? this.evaluationId,
      itemId: itemId ?? this.itemId,
      attempt: attempt ?? this.attempt,
      correctAttempt: correctAttempt ?? this.correctAttempt,
      failAttempt: failAttempt ?? this.failAttempt,
      score: score ?? this.score,
    );
  }

  Map<String, dynamic> toJson() => _$JudgmentsModelToJson(this);
  factory JudgmentsModel.fromJson(Map<String, dynamic> json) =>
      _$JudgmentsModelFromJson(json);
}
