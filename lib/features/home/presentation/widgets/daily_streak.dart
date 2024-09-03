import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';

class DailyStreakWidget extends StatelessWidget {
  const DailyStreakWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height * 0.2,
      width: context.width,
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: LinearGradient(colors: [
            Colors.lightGreen.withOpacity(0.2),
            Colors.green.withOpacity(0.2)
          ])),
      padding: EdgeInsets.all(8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(children: [
            Icon(LineIcons.calendar),
            SizedBox(width: 5),
            Text('Daily Streak',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16))
          ]),
          // SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              DailyCheckButton(coin: 50, dayCount: 1),
              DailyCheckButton(coin: 100, dayCount: 2),
              DailyCheckButton(coin: 150, dayCount: 3),
              DailyCheckButton(
                coin: 200,
                dayCount: 4,
                isToday: true,
              ),
              DailyCheckButton(coin: 250, dayCount: 5),
              DailyCheckButton(coin: 300, dayCount: 6),
            ],
          )
        ],
      ),
    );
  }
}

class DailyCheckButton extends StatelessWidget {
  final int dayCount;
  final int coin;
  final bool isToday;
  const DailyCheckButton({
    super.key,
    required this.coin,
    required this.dayCount,
    this.isToday = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              color: isToday
                  ? Colors.lightGreen.withOpacity(1)
                  : Colors.lightGreen.withOpacity(0.25),
              borderRadius: BorderRadius.circular(12)),
          height: 70,
          width: 50,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('${coin}pt',
                  style:
                      TextStyle(color: isToday ? Colors.white : Colors.grey)),
              Icon(LineIcons.coins, color: Colors.amber, size: 32),
            ],
          ),
        ),
        SizedBox(height: 5),
        Text(
          'Day $dayCount',
          style: TextStyle(color: Colors.grey),
        )
      ],
    );
  }
}
