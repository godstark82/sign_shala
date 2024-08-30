import 'package:sign_shala/core/usecase/usecase.dart';
import 'package:sign_shala/features/login/domain/repositories/login_repo.dart';

class SignoutUsecase extends UseCase<void, void> {
  final LoginRepository _loginRepository;
  SignoutUsecase(this._loginRepository);
  @override
  Future<void> call(void parama) async {
    _loginRepository.signOut();
  }
}
