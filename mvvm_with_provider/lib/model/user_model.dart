import 'dart:convert';

class UserModel {
  String? token;
  // String? username;

  UserModel({
    this.token,
    // this.username,
  });

  factory UserModel.fromRawJson(String str) =>
      UserModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        token: json["token"],
        // username: json["username"],
      );

  Map<String, dynamic> toJson() => {
        "token": token,
        // "username": username,
      };
}
