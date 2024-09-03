import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:sign_shala/features/login/presentation/bloc/login_bloc.dart';

class GoogleButton extends StatelessWidget {
  const GoogleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<LoginBloc>().add(SignInEvent());
      },
      child: Container(
        decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            borderRadius: BorderRadius.vertical(top: Radius.circular(16))),
        height: context.height * 0.3,
        width: context.width,
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('A fun way to', style: TextStyle(fontSize: 25)),
            Text('Learn the sign language',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            Text(
                'Personalized lessons, fun games, and real-life practice to help you master the sign language',
                style: TextStyle(
                    color: Theme.of(context).textTheme.labelSmall?.color)),
            //!!!
            Expanded(child: SizedBox()),
            Container(
              margin: EdgeInsets.only(bottom: 20, left: 16, right: 16),
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/google.png'),
                  SizedBox(width: 5),
                  Text(
                    'Continue with Google',
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(color: Colors.black),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
