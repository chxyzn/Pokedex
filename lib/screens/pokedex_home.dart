import 'package:flutter/material.dart';
import 'package:pokedex_dvm/screens/attributes_page.dart';
import 'package:pokedex_dvm/widgets/add_card_for_pokedex.dart';

class Pokedex extends StatefulWidget {
  const Pokedex({Key? key}) : super(key: key);

  @override
  State<Pokedex> createState() => _PokedexState();
}

class _PokedexState extends State<Pokedex> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(246, 240, 237, 1.0),
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Pokedex',
            style: TextStyle(color: Colors.black, fontFamily: 'Roboto'),
          ),
          elevation: 15.0,
          shadowColor: Colors.black,
          backgroundColor: const Color.fromRGBO(246, 240, 237, 1.0),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.horizontal(
              left: Radius.circular(20.0),
              right: Radius.circular(20.0),
            ),
          ),
        ),
        body: Container(
          margin: const EdgeInsets.fromLTRB(60, 80, 60, 0),
          child: ListView.builder(
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AttributesPage(),
                      ),
                    );
                  },
                  child: AddCardPokedex(i: index),
                );
              }),
        ),
      ),
    );
  }
}
