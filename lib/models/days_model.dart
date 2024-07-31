import 'package:json_annotation/json_annotation.dart';
part 'days_model.g.dart';

@JsonSerializable()
class DaysModel {
  DaysModel({
    required this.eventId,
    required this.date,
    required this.startHour,
    required this.index,
    this.id,
  });

  int? id;

  @JsonKey(name: 'event_id')
  int eventId;
  String date;
  @JsonKey(name: 'start_hour')
  String startHour;
  int index;

  DaysModel copyWith({
    int? id,
    int? eventId,
    String? date,
    String? startHour,
    int? index,
  }) {
    return DaysModel(
      id: id ?? this.id,
      eventId: eventId ?? this.eventId,
      date: date ?? this.date,
      startHour: startHour ?? this.startHour,
      index: index ?? this.index,
    );
  }

  Map<String, dynamic> toJson() => _$DaysModelToJson(this);
  factory DaysModel.fromJson(Map<String, dynamic> json) =>
      _$DaysModelFromJson(json);
}
