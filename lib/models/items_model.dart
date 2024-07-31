import 'package:json_annotation/json_annotation.dart';
part 'items_model.g.dart';

@JsonSerializable()
class ItemsModel {
  ItemsModel({
    required this.subCriteriaId,
    required this.name,
    required this.aspect,
    required this.weight,
    this.id,
  });

  int? id;
  @JsonKey(name: 'sub_criteria_id')
  int subCriteriaId;
  String name;
  String aspect;
  String weight;

  ItemsModel copyWith({
    int? id,
    int? subCriteriaId,
    String? name,
    String? aspect,
    String? weight,
  }) {
    return ItemsModel(
      id: id ?? this.id,
      subCriteriaId: subCriteriaId ?? this.subCriteriaId,
      name: name ?? this.name,
      aspect: aspect ?? this.aspect,
      weight: weight ?? this.weight,
    );
  }

  Map<String, dynamic> toJson() => _$ItemsModelToJson(this);
  factory ItemsModel.fromJson(Map<String, dynamic> json) =>
      _$ItemsModelFromJson(json);
}
