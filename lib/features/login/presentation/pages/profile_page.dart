import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sign_shala/features/login/presentation/bloc/login_bloc.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile'), actions: [
        Padding(
            padding: EdgeInsets.all(6),
            child: IconButton(
                tooltip: 'Log out',
                onPressed: () {
                  context.read<LoginBloc>().add(SignOutEvent());
                },
                icon: Icon(Icons.logout, color: Colors.red)))
      ]),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Center(
                child: SizedBox(
                  height: 250,
                  child: CircleAvatar(
                    radius: 100,
                    backgroundColor: Colors.grey,
                    foregroundImage: NetworkImage(
                        FirebaseAuth.instance.currentUser?.photoURL ?? ''),
                  ),
                ),
              ),
              Center(
                child: Text(
                  FirebaseAuth.instance.currentUser?.displayName ?? '',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
