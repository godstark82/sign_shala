import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sign_shala/features/home/presentation/pages/home.dart';
import 'package:sign_shala/features/login/domain/usecases/sign_in_usecase.dart';
import 'package:sign_shala/features/login/domain/usecases/signout_usecase.dart';
import 'package:sign_shala/features/login/presentation/pages/login_page.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  SignInUseCase signInUseCase;
  SignoutUsecase signoutUsecase;

  LoginBloc(this.signInUseCase, this.signoutUsecase) : super(LoginInitial()) {
    //! Login
    on<SignInEvent>((event, emit) async {
      try {
        emit(LoadingLoginState());
        await signInUseCase.call({});
        emit(LoginDoneState());
        await Get.to(() => Home());
      } catch (e) {
        debugPrint(e.toString());
        emit(ErrorLoginState(e.toString()));
      }
    });

    //! SignOut
    on<SignOutEvent>((event, emit) async {
      try {
        emit(LoadingLoginState());
        await signoutUsecase.call({});
        emit(LogOutDoneState());
        await Get.to(() => LoginPage());
      } catch (e) {
        emit(ErrorLoginState(e.toString()));
        debugPrint('$e');
      }
    });
  }
}
