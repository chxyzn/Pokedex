import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:pokedex_dvm/widgets/capture_card.dart';
import 'package:pokedex_dvm/widgets/description_card.dart';
import 'package:pokedex_dvm/widgets/evolutions_card.dart';
import 'package:pokedex_dvm/widgets/image_card.dart';
import 'package:pokedex_dvm/widgets/info_card.dart';
import 'package:pokedex_dvm/widgets/stats_card.dart';

class AttributesPage extends StatelessWidget {
  const AttributesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String pokemonName = "Bulbasaur";

    return MaterialApp(
      home: Scaffold(
        // backgroundColor: const Color.fromRGBO(246, 240, 237, 1.0),
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(246, 240, 237, 1.0),
          centerTitle: true,
          title: Text(
            pokemonName,
            style: const TextStyle(
              color: Colors.black,
              fontFamily: 'Roboto',
              fontSize: 28,
            ),
          ),
          elevation: 15.0,
          shadowColor: Colors.black,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.horizontal(
              left: Radius.circular(20.0),
              right: Radius.circular(20.0),
            ),
          ),
        ),
        body: ListView(
          children: const [
            ImageCard(),
            DescreptionCard(),
            InfoCard(),
            StatsCard(),
            EvolutionsCard(),
            CaptureCard(),
          ],
        ),
      ),
    );
  }
}
