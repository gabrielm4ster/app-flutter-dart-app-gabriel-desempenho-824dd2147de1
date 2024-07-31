import 'package:json_annotation/json_annotation.dart';
part 'instituitions_model.g.dart';

@JsonSerializable()
class InstituitionsModel {
  InstituitionsModel({
    required this.name,
    required this.logo,
    this.id,
  });

  int? id;
  String name;
  String logo;

  InstituitionsModel copyWith({
    int? id,
    String? name,
    String? logo,
  }) {
    return InstituitionsModel(
      id: id ?? this.id,
      name: name ?? this.name,
      logo: logo ?? this.logo,
    );
  }

  Map<String, dynamic> toJson() => _$InstituitionsModelToJson(this);
  factory InstituitionsModel.toJson(Map<String, dynamic> json) =>
      _$InstituitionsModelFromJson(json);
}
