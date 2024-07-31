import 'package:json_annotation/json_annotation.dart';
part 'events_model.g.dart';

@JsonSerializable()
class EventsModel {
  EventsModel({
    required this.name,
    required this.logo,
    this.id,
  });

  int? id;
  String name;
  String logo;

  EventsModel copyWith({
    int? id,
    String? name,
    String? logo,
  }) {
    return EventsModel(
      id: id ?? this.id,
      name: name ?? this.name,
      logo: logo ?? this.logo,
    );
  }

  Map<String, dynamic> toJson() => _$EventsModelToJson(this);
  factory EventsModel.fromJson(Map<String, dynamic> json) =>
      _$EventsModelFromJson(json);
}
