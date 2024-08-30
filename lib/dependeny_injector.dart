import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:sign_shala/core/services/login_service.dart';
import 'package:sign_shala/features/login/data/repositories/login_repo_impl.dart';
import 'package:sign_shala/features/login/domain/repositories/login_repo.dart';
import 'package:sign_shala/features/login/domain/usecases/sign_in_usecase.dart';
import 'package:sign_shala/features/login/domain/usecases/signout_usecase.dart';
import 'package:sign_shala/features/login/presentation/bloc/login_bloc.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  //! Services
  sl.registerSingleton<Dio>(Dio());
  sl.registerSingleton<LoginService>(LoginService());

  //! Repository
  sl.registerSingleton<LoginRepository>(LoginRepoImpl(sl()));

  //! UseCases
  sl.registerSingleton<SignInUseCase>(SignInUseCase(sl()));
  sl.registerSingleton<SignoutUsecase>(SignoutUsecase(sl()));

  //! BLoC
  sl.registerFactory<LoginBloc>(() => LoginBloc(sl(), sl()));
}
