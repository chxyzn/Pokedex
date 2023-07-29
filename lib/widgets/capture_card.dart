import 'package:flutter/material.dart';
import 'package:pokedex_dvm/widgets/circular_percent_maker.dart';

class CaptureCard extends StatelessWidget {
  const CaptureCard({super.key});

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
        child: Column(
          children: [
            SizedBox(
              height: 25,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Capture Rate',
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 24,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Center(
              child: CircularPercentMaker(
                  n: 18, col: Color.fromRGBO(9, 188, 138, 1), s: ''),
            )
          ],
        ),
      ),
    );
  }
}
