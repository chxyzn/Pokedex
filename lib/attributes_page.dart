import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class AttributesPage extends StatelessWidget {
  const AttributesPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    String pokemonName= "Bulbasaur";

    return MaterialApp(
      home: Scaffold(
        // backgroundColor: const Color.fromRGBO(246, 240, 237, 1.0),
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(246, 240, 237, 1.0),
          centerTitle: true,
          title: Text(pokemonName, style: const TextStyle( color: Colors.black , fontFamily: 'Roboto',fontSize: 28)),
          elevation: 15.0,
          shadowColor: Colors.black,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.horizontal(left: Radius.circular(20.0), right : Radius.circular(20.0))
          ),
        ),
        body: ListView(
          children: [
            Container(),
            DescriptionCard(),
            InfoCard(),
            StatsCard(),
            EvolutionsCard(),
            CaptureCard(),
          ],
        ),
      ),
    );
  }
  Card DescriptionCard(){
    return Card(
      color: const Color.fromRGBO(246, 240, 237, 1.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text('Description',style: TextStyle(
            color: Colors.black,
            fontFamily: 'Roboto',
            fontSize: 24,
          ),),
          SizedBox(height: 20,),
          Text('A Strange seed was planted on its back at birth. The plant sprouts and grows wit this POKeMON',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'Roboto',
              fontSize: 18.75,
            ),),
        ],
      ),
    );
  }
  Card InfoCard(){
    return Card(
      color: const Color.fromRGBO(246, 240, 237, 1.0),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [SizedBox(width: 20,),Text('Info')]),
          Row(
            children: [
              SizedBox(width: 73,),
              Text('Height',style: TextStyle(fontFamily: 'Roboto',fontSize: 18),),
              SizedBox(width: 162,),
              Text('Weight',style: TextStyle(fontFamily: 'Roboto',fontSize: 18),)
            ],
          ),
          Row(
            children: [
              SizedBox(width: 77,),
              Text('0.7 m',style: TextStyle(fontFamily: 'Roboto',fontSize: 18),),
              SizedBox(width: 166,),
              Text('6.9 kg',style: TextStyle(fontFamily: 'Roboto',fontSize: 18),)
            ],
          ),
          Row(
            children: [
              SizedBox(width: 62,),
              Text('Category',style: TextStyle(fontFamily: 'Roboto',fontSize: 18),),
              SizedBox(width: 156,),
              Text('Abilites',style: TextStyle(fontFamily: 'Roboto',fontSize: 18),)
            ],
          ),
          Row(
            children: [
              SizedBox(width: 80,),
              Text('Seed',style: TextStyle(fontFamily: 'Roboto',fontSize: 18),),
              SizedBox(width: 151,),
              Text('Overgrow',style: TextStyle(fontFamily: 'Roboto',fontSize: 18),),
              Expanded(child: IconButton(onPressed: () {}, icon: Icon(Icons.add_alert),iconSize: 12,padding: EdgeInsets.zero,))
            ],
          )
        ],
      ),
    );
  }
  Card StatsCard(){
    return Card(
      color: const Color.fromRGBO(246, 240, 237, 1.0),
      child: Column(
        children: [
          Row(
            children: [ SizedBox(width: 28,),Text('Stats',style: TextStyle(fontFamily: 'Roboto',fontSize: 24),)],
          ),
          SizedBox(height: 30,),
          Row(
            children: [
              SizedBox(width: 52,),
              CircularPercentMaker(45, Color.fromRGBO(20, 204, 96, 1), 'HP'),
              SizedBox(width: 100,),
              CircularPercentMaker(45, Color.fromRGBO(228, 200, 17, 1), 'HP')
            ],
          ),
          SizedBox(height: 30,),
          Row(
            children: [
              SizedBox(width: 52,),
              CircularPercentMaker(49, Color.fromRGBO(239, 62, 51, 1), 'Attack'),
              SizedBox(width: 100,),
              CircularPercentMaker(49, Color.fromRGBO(0, 78, 152, 1), 'Defense')
            ],
          ),
          SizedBox(height: 30,),
          Row(
            children: [
              SizedBox(width: 52,),
              CircularPercentMaker(65, Color.fromRGBO(197, 137, 232, 1), 'Special'
                  'Attack'),
              SizedBox(width: 100,),
              CircularPercentMaker(65, Color.fromRGBO(37, 137, 189, 1) , 'Special'
                  'Defense')
            ],
          ),
          SizedBox(height: 23,),
        ],
      ),
    );
  }
  Card EvolutionsCard(){
    return Card(
        color: const Color.fromRGBO(246, 240, 237, 1.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(children: [SizedBox(width: 20,),Text('Evolutions',style: TextStyle(fontFamily: 'Roboto',fontSize: 24),)]),
          Row(children: [SizedBox(width: 95,), addCard(3)], )
        ],
      )
    );
  }
  Card CaptureCard(){
    return Card(
      color: const Color.fromRGBO(246, 240, 237, 1.0),
      child: Column(
        children: [
          SizedBox(height: 25,),
          Row(
            children: [
              SizedBox(width: 20,),
              Text('Capture Rate',style: TextStyle(fontFamily: 'Roboto',fontSize: 24),),
            ],
          ),
          SizedBox(height: 25,),
          Center(
            child: CircularPercentMaker(18, Color.fromRGBO(9, 188, 138, 1), ''),
          )
        ],
      ),
    );
  }


  Widget CircularPercentMaker( int n , Color color , String s) {
    return CircularPercentIndicator(
      radius: 40,
      lineWidth: 9,
      percent: n/100,
      progressColor: color,
      backgroundColor: Colors.black,
      circularStrokeCap: CircularStrokeCap.square,
      center: Text('$n',style: TextStyle(fontFamily: 'Roboto',fontSize: 24),),
      footer: Text('$s',style: TextStyle(fontFamily: 'Roboto',fontSize: 18),),

    );
  }
  Widget addCard(int i) {
    i=i+1;
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
      ),
      color: Colors.black,
      child: SizedBox(
        height: 274,
        width: 180,
        child: Column(
          children: [
            SizedBox(height: 20,),
            Row(
              children: [
                SizedBox(width: 20,),
                Text('#$i',
                style: TextStyle(color: Colors.white),),
              ],
            ),
            SizedBox(height:26 ,),
            Text('Bulbasaur', style: TextStyle(color: Colors.white),),
            SizedBox(height: 20,),
            Row(
              children: [
                SizedBox(width: 58,),
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
            ),
            Image.asset('images/bulba.png', height: 136, width: 136,),
            SizedBox(height: 20,),
          ]
        ),
      ),
    );
  }
}
