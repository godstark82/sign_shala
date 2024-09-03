import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sign_shala/features/home/data/models/course_model.dart';
import 'package:sign_shala/features/home/presentation/pages/lesson_page.dart';
import 'package:sign_shala/features/home/presentation/pages/quiz_page.dart';

class UnitPage extends StatelessWidget {
  final UnitModel unit;
  const UnitPage({super.key, required this.unit});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(unit.name),
        centerTitle: true,
      ),
      body: CustomScrollView(
        slivers: [
          SliverList.builder(
              itemCount: unit.lessons.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 3),
                  child: ListTile(
                    onTap: () {
                      Get.to(() => LessonPage(lesson: unit.lessons[index]));
                    },
                    tileColor: Colors.white,
                    leading: Icon(Icons.book),
                    title: Text(
                        'Lesson ${index + 1}: ${unit.lessons[index].name}'),
                    trailing: Icon(Icons.play_arrow_rounded),
                  ),
                );
              }),
          SliverList.builder(
              itemCount: unit.quizes.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 3),
                  child: ListTile(
                    onTap: () {
                      Get.to(() => QuizPage(quiz: unit.quizes[index]));
                    },
                    tileColor: Colors.white,
                    leading: Icon(Icons.question_mark),
                    title: Text('Exercise ${index + 1}'),
                    trailing: Icon(Icons.play_arrow_rounded),
                  ),
                );
              })
        ],
      ),
    );
  }
}
