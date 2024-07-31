import 'package:json_annotation/json_annotation.dart';
part 'participants_model.g.dart';

@JsonSerializable()
class ParticipantsModel {
  ParticipantsModel({
    required this.userId,
    required this.teamId,
    required this.modalityId,
    this.id,
    this.instituionId,
    this.position,
  });

  int? id;
  @JsonKey(name: 'user_id')
  int userId;
  @JsonKey(name: 'team_id')
  int teamId;
  @JsonKey(name: 'instituion_id')
  int? instituionId;
  @JsonKey(name: 'modality_id')
  int modalityId;
  String? position;

  ParticipantsModel copyWith({
    int? id,
    int? userId,
    int? teamId,
    int? instituionId,
    int? modalityId,
    String? position,
  }) {
    return ParticipantsModel(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      teamId: teamId ?? this.teamId,
      instituionId: instituionId ?? this.instituionId,
      modalityId: modalityId ?? this.modalityId,
      position: position ?? this.position,
    );
  }

  Map<String, dynamic> toJson() => _$ParticipantsModelToJson(this);
  factory ParticipantsModel.fromJson(Map<String, dynamic> json) =>
      _$ParticipantsModelFromJson(json);
}
