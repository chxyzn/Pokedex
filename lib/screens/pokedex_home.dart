import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex_dvm/screens/attributes_page.dart';
import 'package:pokedex_dvm/widgets/pokemon_card.dart';

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
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 31.h,
              ),
              Container(
                height: 24.h,
                width: 240.w,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  color: Color.fromRGBO(204, 204, 204, 1),
                ),
                child: const TextField(
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search_rounded,
                      color: Colors.black,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(
                height: 31.h,
              ),
              ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
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
                      child: PokemonCard(index: index),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
