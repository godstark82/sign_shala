import 'package:sign_shala/features/login/domain/entities/ss_user.dart';

class UserModel extends SsUserEntity {
  UserModel(
      {required super.accessToken,
      required super.displayName,
      required super.email,
      required super.idToken,
      required super.photoURL});

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
        accessToken: json['accessToken'],
        displayName: json['displayName'],
        email: json['email'],
        idToken: json['idToken'],
        photoURL: json['photoURL']);
  }

  Map<String, dynamic> toJson() {
    return {
      'displayName': displayName,
      'accessToken': accessToken,
      'email': email,
      'idToken': idToken,
      'photoURL': photoURL,
    };
  }

  UserModel copyWith(
      {String? accessToken,
      String? displayName,
      String? email,
      String? idToken,
      String? photoURL}) {
    return UserModel(
        accessToken: accessToken ?? this.accessToken,
        displayName: displayName ?? this.displayName,
        email: email ?? this.email,
        idToken: idToken ?? this.idToken,
        photoURL: photoURL ?? this.photoURL);
  }
}
