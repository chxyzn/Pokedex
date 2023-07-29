import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(7.5),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20))),
        color: Color.fromRGBO(246, 240, 237, 1.0),
        child: SizedBox(
          height: 255,
          width: 370,
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 4,
                ),
                Row(children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Info',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Roboto',
                        fontSize: 24),
                  )
                ]),
                SizedBox(
                  height: 42,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 57,
                    ),
                    Text(
                      'Height',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 130,
                    ),
                    Text(
                      'Weight',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                SizedBox(
                  height: 14,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 63,
                    ),
                    Text(
                      '0.7 m',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 18,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      width: 137,
                    ),
                    Text(
                      '6.9 kg',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 18,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
                SizedBox(
                  height: 28,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 49,
                    ),
                    Text(
                      'Category',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 117,
                    ),
                    Text(
                      'Abilites',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                SizedBox(
                  height: 14,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 64,
                    ),
                    Text(
                      'Seed',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 18,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      width: 125,
                    ),
                    Text(
                      'Overgrow',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 18,
                          fontWeight: FontWeight.w400),
                    ),
                    // IconButton(onPressed: () {}, icon: Icon(Icons.add_alert),iconSize: 9,padding: EdgeInsets.zero,)
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
