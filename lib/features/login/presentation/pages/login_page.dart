import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:sign_shala/features/login/presentation/bloc/login_bloc.dart';
import 'package:sign_shala/features/login/presentation/widgets/google_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: BlocConsumer<LoginBloc, LoginState>(
        listener: (context, state) {
          if (state is LoginDoneState) {
            Get.offAllNamed('/');
          }
        },
        builder: (context, state) {
          return Column(
            children: [
              Expanded(
                  child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child:
                        Center(child: Image.asset('assets/images/earth.png')),
                  ),
                  Center(child: Image.asset('assets/images/pose_1.png')),
                  Center(child: Image.asset('assets/images/greet.png')),
                ],
              )),
              GoogleButton(),
            ],
          );
        },
      ),
    );
  }
}
