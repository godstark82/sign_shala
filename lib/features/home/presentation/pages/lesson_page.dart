import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sign_shala/features/home/data/models/course_model.dart';

class LessonPage extends StatelessWidget {
  final LessonModel lesson;
  const LessonPage({super.key, required this.lesson});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.medium(
            title: Text(lesson.name),
          ),
          SliverToBoxAdapter(
              child: Container(
            margin: EdgeInsets.all(16),
            height: context.height * 0.25,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(color: Colors.grey),
                  BoxShadow(color: Colors.grey),
                  BoxShadow(color: Colors.grey),
                  BoxShadow(color: Colors.grey),
                ],
                borderRadius: BorderRadius.circular(16)),
          )),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    lesson.desc,
                    style: TextStyle(fontSize: 18),
                  ),
                  if (lesson.img != null) Text('Images related to this lesson'),
                  if (lesson.img != null) Image.network(lesson.img!)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
