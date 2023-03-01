import 'package:flutter/material.dart';
import 'package:pokedex_dvm/attributes_page.dart';

void main() {
  runApp( Pokedex());
}

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
          title: const Text('Pokedex', style: TextStyle( color: Colors.black , fontFamily: 'Roboto'),),
          elevation: 15.0,
          shadowColor: Colors.black,
          backgroundColor: const Color.fromRGBO(246, 240, 237, 1.0),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.horizontal(left: Radius.circular(20.0), right : Radius.circular(20.0))
          )
        ),
        body: Container(
          margin: const EdgeInsets.fromLTRB(60, 80, 60, 0),
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => AttributesPage()));
              },
              child: addCard(index),
            );
          }
          ),
        ),
      ),
    );
  }
}

Widget addCard(int i) {
  i=i+1;
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20)
    ),
    color: Colors.black,
    child: SizedBox(
      height: 140,
      width: 270,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 18,),
               Text('#00$i',
                style: const TextStyle(
                  fontFamily: 'Roboto',
                  color: Colors.white,
                  fontSize: 14,
                ),),
              SizedBox(height:24,),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 34,),
                    Column(
                      children: [
                        const Text('Bulbasaur',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Roboto',
                          fontSize: 20,
                        ),),
                        SizedBox(height: 12,),
                        Row(
                          children: const [
                            CircleAvatar(
                              radius: 10,
                              backgroundImage: NetworkImage('https://static.wikia.nocookie.net/pokemonfanon/images/3/35/Gen8-Grass.png/revision/latest?cb=20201110231712'),
                            ),
                            SizedBox(width: 10,),
                            CircleAvatar(
                              radius: 10,
                              backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/c/c4/Pok%C3%A9mon_Poison_Type_Icon.svg/2048px-Pok%C3%A9mon_Poison_Type_Icon.svg.png'),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(width: 20,),
          Image.asset('images/bulba.png', height: 136, width: 136,),
        ],
      ),
    ),
  );
}


