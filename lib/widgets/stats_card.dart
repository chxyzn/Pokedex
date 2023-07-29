import 'package:flutter/material.dart';
import 'circular_percent_maker.dart';

class StatsCard extends StatelessWidget {
  const StatsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(7.5),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10))),
        color: Color.fromRGBO(246, 240, 237, 1.0),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Stats',
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 24,
                        fontWeight: FontWeight.w700),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 52,
                  ),
                  CircularPercentMaker(
                      n: 45, col: Color.fromRGBO(20, 204, 96, 1), s: 'HP'),
                  SizedBox(
                    width: 100,
                  ),
                  CircularPercentMaker(
                      n: 45, col: Color.fromRGBO(228, 200, 17, 1), s: 'HP')
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 52,
                  ),
                  CircularPercentMaker(
                      n: 49, col: Color.fromRGBO(239, 62, 51, 1), s: 'Attack'),
                  SizedBox(
                    width: 100,
                  ),
                  CircularPercentMaker(
                      n: 49, col: Color.fromRGBO(0, 78, 152, 1), s: 'Defense')
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 52,
                  ),
                  CircularPercentMaker(
                      n: 65,
                      col: Color.fromRGBO(197, 137, 232, 1),
                      s: 'Special\nAttack'),
                  SizedBox(
                    width: 100,
                  ),
                  CircularPercentMaker(
                      n: 65,
                      col: Color.fromRGBO(37, 137, 189, 1),
                      s: 'Special\nDefense')
                ],
              ),
              SizedBox(
                height: 23,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
