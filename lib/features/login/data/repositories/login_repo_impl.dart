import 'package:sign_shala/core/services/login_service.dart';
import 'package:sign_shala/features/login/data/models/user_model.dart';
import 'package:sign_shala/features/login/domain/repositories/login_repo.dart';

class LoginRepoImpl implements LoginRepository {
  final LoginService _loginService;

  LoginRepoImpl(this._loginService);
  @override
  Future<UserModel?> signInWithGoogle() async {
    return _loginService.signInWithGoogle();
  }

  @override
  Future<void> signOut() async {
    _loginService.signOut();
  }
}
