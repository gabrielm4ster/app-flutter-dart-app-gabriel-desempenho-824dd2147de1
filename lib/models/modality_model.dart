import 'package:json_annotation/json_annotation.dart';
part 'modality_model.g.dart';

@JsonSerializable()
class ModalityModel {
  ModalityModel({
    required this.name,
    this.id,
    this.logo,
  });

  int? id;
  String name;
  String? logo;

  ModalityModel copyWith({
    int? id,
    String? name,
    String? logo,
  }) {
    return ModalityModel(
      id: id ?? this.id,
      name: name ?? this.name,
      logo: logo ?? this.logo,
    );
  }

  Map<String, dynamic> toJson() => _$ModalityModelToJson(this);
  factory ModalityModel.fromJson(Map<String, dynamic> json) =>
      _$ModalityModelFromJson(json);
}
