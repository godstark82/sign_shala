abstract class SsUserEntity {
  final String ? accessToken;
  final String ? idToken;
  final String ? displayName;
  final String ? email;
  final String ? photoURL;

  SsUserEntity({
    required this.accessToken,
    required this.displayName,
    required this.email,
    required this.idToken,
    required this.photoURL,
  });
}
