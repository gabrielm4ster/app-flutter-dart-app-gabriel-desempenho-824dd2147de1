import 'package:json_annotation/json_annotation.dart';
part 'sub_criteria_model.g.dart';

@JsonSerializable()
class SubCriteriaModel {
  SubCriteriaModel({
    required this.name,
    required this.points,
    this.id,
  });

  int? id;
  String name;
  String points;

  SubCriteriaModel copyWith({
    int? id,
    String? name,
    String? points,
  }) {
    return SubCriteriaModel(
      id: id ?? this.id,
      name: name ?? this.name,
      points: points ?? this.points,
    );
  }

  Map<String, dynamic> toJson() => _$SubCriteriaModelToJson(this);
  factory SubCriteriaModel.fromJson(Map<String, dynamic> json) =>
      _$SubCriteriaModelFromJson(json);
}
