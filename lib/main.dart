
import 'package:demo_project/screen_one.dart';
import 'package:demo_project/screen_three.dart';
import 'package:demo_project/screen_two.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Demo App",
      initialRoute: ScreenOne.path,
      routes: {
        ScreenOne.path : (ctx)=> ScreenOne(),
        ScreenTwo.path : (ctx)=> ScreenTwo(),
        ScreenThree.path : (ctx)=> ScreenThree(),
      },
    )
  );
}


