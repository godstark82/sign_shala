import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sign_shala/features/home/data/models/course_model.dart';
import 'package:sign_shala/features/home/presentation/pages/unit_page.dart';

const String img =
    'https://classroomclipart.com/image/static2/preview2/sign-language-hello-clipart-10329.jpg';
final quizModel = QuizModel(
    question: 'What does this sign says ?',
    img: img,
    options: ['A', 'B', 'C', 'D']);

class CoursePage extends StatelessWidget {
  const CoursePage({super.key});

  @override
  Widget build(BuildContext context) {
    const String helloYt = 'https://youtu.be/yBQA3coUjH0';
    final List<QuizModel> quizes = [quizModel, quizModel, quizModel, quizModel];
    final List<LessonModel> lessons = [
      LessonModel(
          name: 'Hello', desc: 'Hello in Sign Language', videoUrl: helloYt),
      LessonModel(
          name: 'Hello', desc: 'Hello in Sign Language', videoUrl: helloYt),
      LessonModel(
          name: 'Hello', desc: 'Hello in Sign Language', videoUrl: helloYt),
      LessonModel(
          name: 'Hello', desc: 'Hello in Sign Language', videoUrl: helloYt),
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
