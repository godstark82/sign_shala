import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:sign_shala/features/home/presentation/pages/home_screen.dart';
import 'package:sign_shala/features/home/presentation/pages/rank_page.dart';

import 'package:sign_shala/features/login/presentation/pages/profile_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Widget> screens = [
    HomeScreen(),
    SizedBox(),
    RankPage(),
    ProfilePage(),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: screens[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            showUnselectedLabels: true,
            unselectedLabelStyle: TextStyle(color: Colors.grey),
            items: [
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: Icon(LineIcons.home),
                  label: 'Home',
                  activeIcon: Icon(Icons.home_filled)),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: Icon(LineIcons.book),
                  activeIcon: Icon(Icons.book),
                  label: 'Exercise'),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: Icon(LineIcons.barChart),
                  activeIcon: Icon(Icons.bar_chart),
                  label: 'Progress'),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: Icon(LineIcons.user),
                  activeIcon: Icon(Icons.person),
                  label: 'Profile'),
            ]));
  }
}
