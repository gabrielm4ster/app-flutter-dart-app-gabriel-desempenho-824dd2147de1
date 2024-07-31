import 'package:json_annotation/json_annotation.dart';
part 'criteria_model.g.dart';

@JsonSerializable()
class CriteriaModel {
  CriteriaModel({
    required this.name,
    required this.points,
    this.id,
  });

  int? id;
  String name;
  String points;

  CriteriaModel copyWith({
    int? id,
    String? name,
    String? points,
  }) {
    return CriteriaModel(
      id: id ?? this.id,
      name: name ?? this.name,
      points: points ?? this.points,
    );
  }

  Map<String, dynamic> toJson() => _$CriteriaModelToJson(this);
  factory CriteriaModel.fromJson(Map<String, dynamic> json) =>
      _$CriteriaModelFromJson(json);
}
