import 'package:flutter/material.dart';
import 'screens/pokedex_home.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(ScreenUtilInit(
    builder: (cotext, child) => const MaterialApp(home: Pokedex()),
    designSize: const Size(390, 844),
  ));
}
