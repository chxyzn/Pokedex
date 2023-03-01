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
        backgroundColor: Colors.white,
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
            ImageCard(),
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

  Card ImageCard(){
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.horizontal(left: Radius.circular(5),right: Radius.circular(5))),
      // shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(50))),
      child: Container(
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage('images/background.jpg'),fit: BoxFit.fill)),
        child: SizedBox(
          width: 390,
          height: 394,
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      SizedBox(width: 20,),
                      Card(
                        color: Color.fromRGBO(30, 30, 30, 0.57),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.white,width: 2)
                        ,borderRadius: BorderRadius.circular(16)),
                        child: SizedBox(
                          height: 43,
                          width: 83,
                          child: Center(
                              child: Text('#001',
                              style: TextStyle(
                                color: Color.fromRGBO(246, 240, 237, 1),
                                fontSize: 24 ,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w500),)
                          )
                        )
                      ),
                    ],
                  ),
                  SizedBox(height: 50,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 15,
                        backgroundImage: NetworkImage('https://static.wikia.nocookie.net/pokemonfanon/images/3/35/Gen8-Grass.png/revision/latest?cb=20201110231712'),
                      ),
                      SizedBox(width: 35,),
                      CircleAvatar(
                        radius: 15  ,
                        backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/c/c4/Pok%C3%A9mon_Poison_Type_Icon.svg/2048px-Pok%C3%A9mon_Poison_Type_Icon.svg.png'),
                      ),
                    ],
                  ),
                  SizedBox(height: 40,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('images/bulba.png', height: 200, width: 200,)
                    ],
                  ), 
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
  Widget DescriptionCard(){
    return Padding(
      padding: EdgeInsets.all(7.5),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20)
          )
        ),
        color: const Color.fromRGBO(246, 240, 237, 1.0),
        child: SizedBox(
          height: 159,
          width: 370,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column (
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('Description',style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Roboto',
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),),
                SizedBox(height: 20,),
                Text('A Strange seed was planted on its back at birth. The plant sprouts and grows wit this POKeMON',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Roboto',
                    fontSize: 18.75,
                    fontWeight: FontWeight.w400
                  ),),
              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget InfoCard(){
    return Padding(
      padding: const EdgeInsets.all(7.5),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)
            )
        ),
        color: const Color.fromRGBO(246, 240, 237, 1.0),
        child: SizedBox(
          height: 255,
          width: 370,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 4,),
                Row(
                  children: [SizedBox(width: 20,),Text('Info',style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Roboto',
                    fontSize: 24
                  ),)]),
                SizedBox(height: 42,),
                Row(
                  children: [
                    SizedBox(width: 57,),
                    Text('Height',style: TextStyle(fontFamily: 'Roboto',fontSize: 18,fontWeight: FontWeight.w500),),
                    SizedBox(width: 130,),
                    Text('Weight',style: TextStyle(fontFamily: 'Roboto',fontSize: 18,fontWeight: FontWeight.w500),)
                  ],
                ),
                SizedBox(height: 14,),
                Row(
                  children: [
                    SizedBox(width: 63,),
                    Text('0.7 m',style: TextStyle(fontFamily: 'Roboto',fontSize: 18,fontWeight: FontWeight.w400),),
                    SizedBox(width: 137,),
                    Text('6.9 kg',style: TextStyle(fontFamily: 'Roboto',fontSize: 18,fontWeight: FontWeight.w400),)
                  ],
                ),
                SizedBox(height: 28,),
                Row(
                  children: [
                    SizedBox(width: 49,),
                    Text('Category',style: TextStyle(fontFamily: 'Roboto',fontSize: 18,fontWeight: FontWeight.w500),),
                    SizedBox(width: 117,),
                    Text('Abilites',style: TextStyle(fontFamily: 'Roboto',fontSize: 18,fontWeight: FontWeight.w500),)
                  ],
                ),
                SizedBox(height: 14,),
                Row(
                  children: [
                    SizedBox(width: 64,),
                    Text('Seed',style: TextStyle(fontFamily: 'Roboto',fontSize: 18,fontWeight: FontWeight.w400),),
                    SizedBox(width: 125,),
                    Text('Overgrow',style: TextStyle(fontFamily: 'Roboto',fontSize: 18,fontWeight: FontWeight.w400),),
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
  Widget StatsCard(){
    return Padding(
      padding: const EdgeInsets.all(7.5),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10)
            )
        ),
        color: const Color.fromRGBO(246, 240, 237, 1.0),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(height: 10,),
              Row(
                children: [ SizedBox(width: 10,),Text('Stats',style: TextStyle(fontFamily: 'Roboto',fontSize: 24,fontWeight: FontWeight.w700),)],
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
                  CircularPercentMaker(65, Color.fromRGBO(197, 137, 232, 1), 'Special\nAttack'),
                  SizedBox(width: 100,),
                  CircularPercentMaker(65, Color.fromRGBO(37, 137, 189, 1) , 'Special\nDefense')
                ],
              ),
              SizedBox(height: 23,),
            ],
          ),
        ),
      ),
    );
  }
  Widget EvolutionsCard(){
    return Padding(
      padding: const EdgeInsets.all(7.5),
      child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)
              )
          ),
          color: const Color.fromRGBO(246, 240, 237, 1.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            Row(children: [SizedBox(width: 20,),Text('Evolutions',style: TextStyle(fontFamily: 'Roboto',fontSize: 24,fontWeight: FontWeight.w700),)]),
            Row(children: [SizedBox(width: 95,), addCard(3)], )
          ],
        )
      ),
    );
  }
  Widget CaptureCard(){
    return Padding(
      padding: const EdgeInsets.all(7.5),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10)
            )
        ),
        color: const Color.fromRGBO(246, 240, 237, 1.0),
        child: Column(
          children: [
            SizedBox(height: 25,),
            Row(
              children: [
                SizedBox(width: 20,),
                Text('Capture Rate',style: TextStyle(fontFamily: 'Roboto',fontSize: 24,fontWeight: FontWeight.w700),),
              ],
            ),
            SizedBox(height: 25,),
            Center(
              child: CircularPercentMaker(18, Color.fromRGBO(9, 188, 138, 1), ''),
            )
          ],
        ),
      ),
    );
  }

  Widget CircularPercentMaker( int n , Color col , String s) {
    return CircularPercentIndicator(
      radius: 40,
      lineWidth: 9,
      percent: n/100,
      progressColor: col,
      backgroundColor: Colors.black,
      circularStrokeCap: CircularStrokeCap.square,
      center: Text('$n',style: const TextStyle(fontFamily: 'Roboto',fontSize: 24,fontWeight: FontWeight.w700, ),),
      footer: Text('$s',style: const TextStyle(fontFamily: 'Roboto',fontSize: 18,fontWeight: FontWeight.w500),),

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
                style: TextStyle(color: Colors.white,fontFamily: 'Roboto',fontWeight: FontWeight.w400,fontSize: 14),),
              ],
            ),
            SizedBox(height:26 ,),
            Text('Bulbasaur', style: TextStyle(color: Colors.white,fontFamily: 'Roboto',fontWeight: FontWeight.w500,fontSize: 20),),
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
