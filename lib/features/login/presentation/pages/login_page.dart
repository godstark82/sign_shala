import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:sign_shala/core/constants/const.dart';
import 'package:sign_shala/features/login/presentation/bloc/login_bloc.dart';

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
          return SafeArea(
            child: SizedBox(
              width: context.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Welcome to',
                            textAlign: TextAlign.start,
                            style: Theme.of(context).textTheme.titleLarge),
                        SizedBox(height: 5),
                        Text(
                          'Sign-Shala',
                          textAlign: TextAlign.start,
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall
                              ?.copyWith(color: Colors.lightGreenAccent),
                        ),
                      ],
                    ),
                  )),
                  Center(child: Image.asset('assets/humans/pose_1.png')),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    margin: EdgeInsets.symmetric(horizontal: 24, vertical: 36),
                    height: 50,
                    width: context.width,
                    child: (state is LoadingLoginState)
                        ? Center(child: CircularProgressIndicator.adaptive())
                        : InkWell(
                            splashColor: Colors.transparent,
                            borderRadius: BorderRadius.circular(24),
                            onTap: () {
                              context.read<LoginBloc>().add(SignInEvent());
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CachedNetworkImage(
                                  imageUrl: googleImgUrl,
                                  fit: BoxFit.contain,
                                ),
                                SizedBox(width: 15),
                                Text(
                                  'Sign in with Google',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge
                                      ?.copyWith(color: Colors.black),
                                )
                              ],
                            ),
                          ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
