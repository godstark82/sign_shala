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
                tooltip: 'Settings',
                onPressed: () {},
                icon: Icon(Icons.settings)))
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
              SizedBox(height: 10),
              Card(
                  child: ListTile(
                title:
                    Text('${FirebaseAuth.instance.currentUser?.displayName}'),
                subtitle: Text('${FirebaseAuth.instance.currentUser?.email}'),
                trailing: CircleAvatar(
                  child: Icon(Icons.verified_user),
                ),
              )),
              Card(
                child: ListTile(
                  title: Text('Current Rank'),
                  trailing: Text(
                    '#343',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text('Rating'),
                  trailing: Text(
                    '4568',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.logout, color: Colors.red),
                  title: Text('Logout', style: TextStyle(color: Colors.red)),
                  onTap: () {
                    context.read<LoginBloc>().add(SignOutEvent());
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
