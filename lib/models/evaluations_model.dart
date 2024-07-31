import 'package:json_annotation/json_annotation.dart';
part 'evaluations_model.g.dart';

@JsonSerializable()
class EvaluationsModel {
  EvaluationsModel({
    required this.participantsId,
    required this.modalityId,
    required this.judge,
    required this.date,
    this.id,
    this.eventId,
  });
  int? id;

  @JsonKey(name: 'event_id')
  int? eventId;
  @JsonKey(name: 'participants_id')
  int participantsId;
  @JsonKey(name: 'modality_id')
  int modalityId;
  int judge;
  String date;

  EvaluationsModel copyWith({
    int? id,
    int? eventId,
    int? participantsId,
    int? modalityId,
    int? judge,
    String? date,
  }) {
    return EvaluationsModel(
      id: id ?? this.id,
      eventId: eventId ?? this.eventId,
      participantsId: participantsId ?? this.participantsId,
      modalityId: modalityId ?? this.modalityId,
      judge: judge ?? this.judge,
      date: date ?? this.date,
    );
  }

  Map<String, dynamic> toJson() => _$EvaluationsModelToJson(this);
  factory EvaluationsModel.fromJson(Map<String, dynamic> json) =>
      _$EvaluationsModelFromJson(json);
}
