import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sign_shala/features/home/data/models/course_model.dart';

class QuizPage extends StatelessWidget {
  final QuizModel quiz;
  const QuizPage({super.key, required this.quiz});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' '),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite_outline),
          )
        ],
      ),
      body: Column(
        children: [
          if (quiz.img.isURL)
            Container(
              height: context.height * 0.3,
              margin: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(color: Colors.grey, blurRadius: 4),
                  BoxShadow(color: Colors.grey, blurRadius: 4),
                ],
              ),
              child: Image.network(quiz.img),
            ),
          SizedBox(height: 10),
          Text('What does this gesture mean ?', style: TextStyle(fontSize: 20)),
          Expanded(child: SizedBox()),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            child: Column(
              children: [
                Container(
                    height: 40,
                    margin: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        color: Colors.grey.withOpacity(0.5)),
                    child: Center(
                        child: Text('Five', style: TextStyle(fontSize: 18)))),
                Container(
                    height: 40,
                    margin: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        color: Colors.grey.withOpacity(0.5)),
                    child: Center(
                        child: Text('Juice', style: TextStyle(fontSize: 18)))),
                Container(
                    height: 40,
                    margin: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        color: Colors.grey.withOpacity(0.5)),
                    child: Center(
                        child: Text('Hello', style: TextStyle(fontSize: 18)))),
                Container(
                    height: 40,
                    margin: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        color: Colors.grey.withOpacity(0.5)),
                    child: Center(
                        child: Text('One', style: TextStyle(fontSize: 18)))),
              ],
            ),
          )
        ],
      ),
    );
  }
}
