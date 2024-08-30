import 'package:sign_shala/features/login/data/models/user_model.dart';

abstract class LoginRepository {
  Future<UserModel?> signInWithGoogle();
  Future<void> signOut();
}
