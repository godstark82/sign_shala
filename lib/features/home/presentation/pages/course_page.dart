import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sign_shala/features/home/data/models/course_model.dart';
import 'package:sign_shala/features/home/presentation/pages/unit_page.dart';

class CoursePage extends StatelessWidget {
  const CoursePage({super.key});

  @override
  Widget build(BuildContext context) {
    const String img =
        'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.vecteezy.com%2Ffree-vector%2Fsign-language&psig=AOvVaw3TTX1Xuqwwa8IoG8_cZjOE&ust=1725460492866000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCNDS_K__pogDFQAAAAAdAAAAABAE';
    final List<QuizModel> quizes = [
      QuizModel(
          question: 'What does this sign says ?',
          img: 'img',
          options: ['A', 'B', 'C', 'D']),
      QuizModel(
          question: 'What does this sign says ?',
          img: 'img',
          options: ['A', 'B', 'C', 'D']),
      QuizModel(
          question: 'What does this sign says ?',
          img: 'img',
          options: ['A', 'B', 'C', 'D']),
      QuizModel(
          question: 'What does this sign says ?',
          img: 'img',
          options: ['A', 'B', 'C', 'D'])
    ];
    final List<LessonModel> lessons = [
      LessonModel(name: 'Hello', desc: 'Hello in Sign Language'),
      LessonModel(name: 'Hello', desc: 'Hello in Sign Language'),
      LessonModel(name: 'Hello', desc: 'Hello in Sign Language'),
      LessonModel(name: 'Hello', desc: 'Hello in Sign Language'),
    ];
    final List<UnitModel> units = [
      UnitModel(
          name: 'Greetings',
          description: 'In this Unit we will be learning about greetings',
          img: img,
          lessons: lessons,
          quizes: quizes),
      UnitModel(
          name: 'Greetings',
          description: 'In this Unit we will be learning about greetings',
          img: img,
          lessons: lessons,
          quizes: quizes),
      UnitModel(
          name: 'Greetings',
          description: 'In this Unit we will be learning about greetings',
          img: img,
          lessons: lessons,
          quizes: quizes),
      UnitModel(
          name: 'Greetings',
          description: 'In this Unit we will be learning about greetings',
          img: img,
          lessons: lessons,
          quizes: quizes),
      UnitModel(
          name: 'Greetings',
          description: 'In this Unit we will be learning about greetings',
          img: img,
          lessons: lessons,
          quizes: quizes),
    ];
    return Scaffold(
      appBar: AppBar(title: Text('Basic Signs And Uses'), actions: [
        IconButton(
            onPressed: () {},
            icon: Icon(Icons.info_outline),
            tooltip: 'Course Info')
      ]),
      body: ListView.builder(
          itemCount: units.length,
          itemBuilder: (context, index) {
            return Card(
              margin: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              child: ListTile(
                onTap: () {
                  Get.to(() => UnitPage(unit: units[index]));
                },
                leading: CircleAvatar(child: Text('${index + 1}')),
                title: Text(units[index].name),
                subtitle: Text('Words : ${units[index].lessons.length}'),
                trailing: Icon(Icons.chevron_right),
              ),
            );
          }),
    );
  }
}
