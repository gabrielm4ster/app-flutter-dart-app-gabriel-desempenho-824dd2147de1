import 'package:json_annotation/json_annotation.dart';
part 'user_model.g.dart';

@JsonSerializable()
class UserModel {
  UserModel({
    required this.name,
    required this.lastName,
    required this.birthday,
    required this.gender,
    required this.email,
    required this.password,
    required this.interfaceLanguage,
    required this.role,
    this.id,
    this.photo,
  });

  int? id;
  String name;
  @JsonKey(name: 'last_name')
  String lastName;
  String birthday;
  String gender;
  String? photo;
  String email;
  String password;
  @JsonKey(name: 'inter_face_language')
  int interfaceLanguage;
  int role;

  UserModel copyWith({
    int? id,
    String? name,
    String? lastName,
    String? birthday,
    String? gender,
    String? photo,
    String? email,
    String? password,
    int? interfaceLanguage,
    int? role,
  }) {
    return UserModel(
      id: id ?? this.id,
      name: name ?? this.name,
      lastName: lastName ?? this.lastName,
      birthday: birthday ?? this.birthday,
      gender: gender ?? this.gender,
      photo: photo ?? this.photo,
      email: email ?? this.email,
      password: password ?? this.password,
      interfaceLanguage: interfaceLanguage ?? this.interfaceLanguage,
      role: role ?? this.role,
    );
  }

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
