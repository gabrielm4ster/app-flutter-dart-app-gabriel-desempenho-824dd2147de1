import 'package:json_annotation/json_annotation.dart';
part 'teams_model.g.dart';

@JsonSerializable()
class TeamsModel {
  TeamsModel({
    required this.name,
    this.id,
    this.logo,
  });

  int? id;
  String name;
  String? logo;

  TeamsModel copyWith({
    int? id,
    String? name,
    String? logo,
  }) {
    return TeamsModel(
      id: id ?? this.id,
      name: name ?? this.name,
      logo: logo ?? this.logo,
    );
  }

  Map<String, dynamic> toJson() => _$TeamsModelToJson(this);
  factory TeamsModel.fromJson(Map<String, dynamic> json) =>
      _$TeamsModelFromJson(json);
}
