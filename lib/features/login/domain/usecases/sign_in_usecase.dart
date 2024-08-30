import 'package:sign_shala/core/usecase/usecase.dart';
import 'package:sign_shala/features/login/data/models/user_model.dart';
import 'package:sign_shala/features/login/domain/repositories/login_repo.dart';

class SignInUseCase extends UseCase<UserModel?, void> {
  final LoginRepository repository;

  SignInUseCase(this.repository);
  @override
  Future<UserModel?> call(void parama) async {
    return repository.signInWithGoogle();
  }
}
