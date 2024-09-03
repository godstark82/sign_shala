import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class ExerciseWidget extends StatelessWidget {
  const ExerciseWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text('Exercises', style: Theme.of(context).textTheme.titleLarge),
            Text('See All',
                style: Theme.of(context)
                    .textTheme
                    .titleSmall
                    ?.copyWith(color: Colors.grey))
          ]),
          SizedBox(height: 10),
          SizedBox(
            height: 300,
            child: ListView.separated(
                itemCount: 5,
                shrinkWrap: true,
                separatorBuilder: (context, index){
                  return SizedBox(height: 5);
                },
                itemBuilder: (context, index) {
                  return ListTile(
                    tileColor: Theme.of(context).cardColor,
                    leading: CircleAvatar(
                      child: Text('${index+1}'),
                    ),
                    title: Text('Exercise ${index+1}: Greetings'),
                    subtitle: Row(
                      children: [
                        Icon(LineIcons.clock,color: Colors.grey,size: 16),
                        SizedBox(width: 5),
                        Text('5 Minutes',style: TextStyle(color: Colors.grey),)
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
