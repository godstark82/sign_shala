import 'dart:developer';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:sign_shala/core/constants/login_const.dart';
import 'package:sign_shala/dependeny_injector.dart';
import 'package:sign_shala/features/home/presentation/pages/home.dart';
import 'package:sign_shala/features/login/presentation/bloc/login_bloc.dart';
import 'package:sign_shala/features/login/presentation/pages/login_page.dart';
import 'package:sign_shala/features/login/presentation/pages/profile_page.dart';
import 'package:sign_shala/firebase_options.dart';
import 'package:sign_shala/theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await initializeDependencies();

  await Hive.initFlutter();
  await Hive.openBox('config');
  await getUserLoginInfo();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final customTextTheme = ThemeData.light().textTheme;
    final theme = MaterialTheme(customTextTheme);

    return MultiBlocProvider(
      providers: [
        BlocProvider<LoginBloc>(create: (context) => LoginBloc(sl(), sl())),
      ],
      child: GetMaterialApp(
        theme: theme.light(),
        darkTheme: theme.dark(),
        highContrastTheme: theme.lightHighContrast(),
        highContrastDarkTheme: theme.darkHighContrast(),
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.system,
        title: 'Sign Shala',
        getPages: [
          GetPage(
              name: '/',
              page: () {
                if (LoginConst.isLoggedIn) {
                  log('Goint to Home Page');
                  return Home();
                }
                log('Goint to Login Page');
                return LoginPage();
              }),
          GetPage(name: '/home', page: () => Home()),
          GetPage(name: '/profile', page: () => ProfilePage()),
          GetPage(name: '/login', page: () => LoginPage()),
        ],
      ),
    );
  }
}

Future<void> getUserLoginInfo() async {
  LoginConst.isLoggedIn = (await Hive.box('config').get('isLoggedIn')) ?? false;
  LoginConst.accessToken = await Hive.box('config').get('accessToken');
  LoginConst.idToken = await Hive.box('config').get('idToken');
}
