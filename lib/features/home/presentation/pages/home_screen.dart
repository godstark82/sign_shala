import 'package:flutter/material.dart';
import 'package:sign_shala/features/home/presentation/widgets/daily_streak.dart';
import 'package:sign_shala/features/home/presentation/widgets/dash_time.dart';
import 'package:sign_shala/features/home/presentation/widgets/exercises.dart';
import 'package:sign_shala/features/home/presentation/widgets/progress_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Sign Shala'),
          centerTitle: true,
         
        ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProgressWidget(),
            DashTimeWidget(),
            DailyStreakWidget(),
            ExerciseWidget(),
          ],
        ),
      ),
    );
  }
}
