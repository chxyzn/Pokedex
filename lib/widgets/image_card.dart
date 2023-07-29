import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  const ImageCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.horizontal(
              left: Radius.circular(5), right: Radius.circular(5))),
      // shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(50))),
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/background.jpg'), fit: BoxFit.fill)),
        child: SizedBox(
          width: 390,
          height: 394,
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Card(
                          color: Color.fromRGBO(30, 30, 30, 0.57),
                          shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.white, width: 2),
                              borderRadius: BorderRadius.circular(16)),
                          child: SizedBox(
                              height: 43,
                              width: 83,
                              child: Center(
                                  child: Text(
                                '#001',
                                style: TextStyle(
                                    color: Color.fromRGBO(246, 240, 237, 1),
                                    fontSize: 24,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w500),
                              )))),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 15,
                        backgroundImage: NetworkImage(
                            'https://static.wikia.nocookie.net/pokemonfanon/images/3/35/Gen8-Grass.png/revision/latest?cb=20201110231712'),
                      ),
                      SizedBox(
                        width: 35,
                      ),
                      CircleAvatar(
                        radius: 15,
                        backgroundImage: NetworkImage(
                            'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c4/Pok%C3%A9mon_Poison_Type_Icon.svg/2048px-Pok%C3%A9mon_Poison_Type_Icon.svg.png'),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'images/bulba.png',
                        height: 200,
                        width: 200,
                      )
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
}
