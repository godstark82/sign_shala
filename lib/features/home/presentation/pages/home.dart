import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sign_shala/core/constants/login_const.dart';
import 'package:sign_shala/features/login/presentation/pages/profile_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          IconButton(
              onPressed: () {
                Get.to(() => ProfilePage());
              },
              icon: Icon(Icons.person))
        ],
      ),
      body: Center(
        child: Text('AccessToken:  ${LoginConst.accessToken}'),
      ),
    );
  }
}
