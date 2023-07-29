import 'package:flutter/material.dart';

class AddCard extends StatelessWidget {
  final int i;
  const AddCard({super.key, required this.i});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      color: Colors.black,
      child: SizedBox(
        height: 274,
        width: 180,
        child: Column(children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              Text(
                '#$i',
                style: const TextStyle(
                    color: Colors.white,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                    fontSize: 14),
              ),
            ],
          ),
          const SizedBox(
            height: 26,
          ),
          const Text(
            'Bulbasaur',
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500,
                fontSize: 20),
          ),
          const SizedBox(
            height: 20,
          ),
          const Row(
            children: [
              SizedBox(
                width: 58,
              ),
              CircleAvatar(
                radius: 10,
                backgroundImage: NetworkImage(
                    'https://static.wikia.nocookie.net/pokemonfanon/images/3/35/Gen8-Grass.png/revision/latest?cb=20201110231712'),
              ),
              SizedBox(
                width: 10,
              ),
              CircleAvatar(
                radius: 10,
                backgroundImage: NetworkImage(
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c4/Pok%C3%A9mon_Poison_Type_Icon.svg/2048px-Pok%C3%A9mon_Poison_Type_Icon.svg.png'),
              )
            ],
          ),
          Image.asset(
            'images/bulba.png',
            height: 136,
            width: 136,
          ),
          const SizedBox(
            height: 20,
          ),
        ]),
      ),
    );
  }
}
