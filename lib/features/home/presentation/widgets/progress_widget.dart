import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class ProgressWidget extends StatelessWidget {
  const ProgressWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade100, blurRadius: 10, spreadRadius: 10)
          ],
          color: Colors.black12.withOpacity(0.02),
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(20)),
      padding: EdgeInsets.all(8),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Learning Progress',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Row(
                children: [
                  Icon(
                    Icons.book,
                    color: Colors.grey,
                    size: 16,
                  ),
                  SizedBox(width: 5),
                  Text(
                    '12/16 Lesson',
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              )
            ],
          ),
          SizedBox(height: 10),
          LinearProgressIndicator(
            value: 12 / 16,
            minHeight: 5,
            borderRadius: BorderRadius.circular(5),
          ),
          SizedBox(height: 15),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(16)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(radius: 24, child: Text('2')),
                      SizedBox(width: 10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Chapter 12: Greetings',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(LineIcons.clockAlt),
                              SizedBox(width: 5),
                              Text('12 Minutes')
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  Container(
                    height: 25,
                    width: 65,
                    decoration: BoxDecoration(
                      color: Theme.of(context).cardColor.withOpacity(1),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Center(
                      child: Text('Easy',
                          style:
                              TextStyle(color: Theme.of(context).primaryColor)),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
