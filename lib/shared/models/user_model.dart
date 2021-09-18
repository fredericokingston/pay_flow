import 'dart:convert';

class UserModel {
  final String name;
  final String? avatarURL;

  UserModel({required this.name, this.avatarURL});

  factory UserModel.fromMap(Map<String, dynamic> map){
    return UserModel(name: map['name'], avatarURL: map['avatarURL']);
  }

  factory UserModel.fromJson(String json){
    return UserModel.fromMap(jsonDecode(json));
  }

  Map<String, dynamic> toMap() => {
    "name": name,
    "avatarURL": avatarURL,
  };

  String toJson() => jsonEncode(toMap());
}