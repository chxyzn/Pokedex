import 'package:flutter/material.dart';
import 'package:pokedex_dvm/main.dart';
import 'package:pokedex_dvm/widgets/add_card.dart';

class EvolutionsCard extends StatelessWidget {
  const EvolutionsCard({super.key});

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Row(children: [
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Evolutions',
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 24,
                      fontWeight: FontWeight.w700),
                )
              ]),
              Row(
                children: [
                  SizedBox(
                    width: 95,
                  ),
                  AddCard(i: 3)
                ],
              )
            ],
          )),
    );
  }
}
