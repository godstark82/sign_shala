import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';

class DashTimeWidget extends StatelessWidget {
  const DashTimeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: context.height * 0.125,
            width: context.width * 0.425,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(16)),
            padding: EdgeInsets.all(6),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(LineIcons.clock, color: Colors.blue),
                    SizedBox(width: 5),
                    Text(
                      'Learning Time',
                      style: TextStyle(color: Colors.grey.shade700),
                    )
                  ],
                ),
                SizedBox(height: 10),
                Center(
                  child: RichText(
                      text: TextSpan(
                          text: '120',
                          style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          children: [
                        TextSpan(
                            text: ' Minutes',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.normal))
                      ])),
                )
              ],
            ),
          ),
          SizedBox(width: 20),
          Container(
            height: context.height * 0.125,
            width: context.width * 0.425,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(16)),
            padding: EdgeInsets.all(4),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.done_rounded, color: Colors.green),
                    SizedBox(width: 2),
                    Text(
                      'Completed Classes',
                      style: TextStyle(color: Colors.grey.shade700),
                    )
                  ],
                ),
                SizedBox(height: 10),
                Center(
                  child: RichText(
                      text: TextSpan(
                          text: '8',
                          style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          children: [
                        TextSpan(
                            text: ' Classes',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.normal))
                      ])),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
