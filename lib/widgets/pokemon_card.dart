import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PokemonCard extends StatelessWidget {
  final int index;
  const PokemonCard({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topEnd,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 32.h),
          child: Container(
            height: 140.h,
            width: 270.w,
            margin: EdgeInsets.symmetric(horizontal: 60.w),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Colors.black,
            ),
            child: Padding(
              padding: EdgeInsets.only(top: 18.0.h, left: 28.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  indexText(index),
                  SizedBox(
                    height: 13.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 7.w,
                      ),
                      Column(
                        children: [
                          Text(
                            'Bulbasaur',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Roboto',
                                fontSize: 20.h,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 12.h,
                          ),
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 10.h.w,
                                backgroundImage: const NetworkImage(
                                    'https://static.wikia.nocookie.net/pokemonfanon/images/3/35/Gen8-Grass.png/revision/latest?cb=20201110231712'),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              CircleAvatar(
                                radius: 10.h.w,
                                backgroundImage: const NetworkImage(
                                    'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c4/Pok%C3%A9mon_Poison_Type_Icon.svg/2048px-Pok%C3%A9mon_Poison_Type_Icon.svg.png'),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 32.0.w),
          child: Image.asset(
            'images/bulba.png',
            height: 136.h,
            width: 136.w,
          ),
        ),
      ],
    );
  }

  Text indexText(int index) {
    if (index < 10) {
      return Text(
        '#00${index + 1}',
        style: TextStyle(
            fontFamily: 'Roboto',
            color: Colors.white,
            fontSize: 14.h,
            fontWeight: FontWeight.w400),
      );
    } else {
      if (index < 100) {
        return Text(
          '#0${index + 1}',
          style: TextStyle(
              fontFamily: 'Roboto',
              color: Colors.white,
              fontSize: 14.h,
              fontWeight: FontWeight.w400),
        );
      } else {
        return Text(
          '#${index + 1}',
          style: TextStyle(
              fontFamily: 'Roboto',
              color: Colors.white,
              fontSize: 14.h,
              fontWeight: FontWeight.w400),
        );
      }
    }
  }
}
