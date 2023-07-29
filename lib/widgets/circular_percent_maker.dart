import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class CircularPercentMaker extends StatelessWidget {
  final int n;
  final Color col;
  final String s;
  const CircularPercentMaker(
      {super.key, required this.n, required this.col, required this.s});

  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      radius: 40,
      lineWidth: 9,
      percent: n / 100,
      progressColor: col,
      backgroundColor: Colors.black,
      circularStrokeCap: CircularStrokeCap.square,
      center: Text(
        '$n',
        style: const TextStyle(
          fontFamily: 'Roboto',
          fontSize: 24,
          fontWeight: FontWeight.w700,
        ),
      ),
      footer: Text(
        '$s',
        style: const TextStyle(
            fontFamily: 'Roboto', fontSize: 18, fontWeight: FontWeight.w500),
      ),
    );
  }
}
