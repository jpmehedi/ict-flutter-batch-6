import 'package:bdfoodrecipe/screens/details/details.dart';
import 'package:bdfoodrecipe/screens/home/home.dart';
import 'package:bdfoodrecipe/screens/video/video.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Foodie',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: HomeScreen.path,
      routes: {
        HomeScreen.path: (ctx)=> HomeScreen(),
        DetailScreen.path: (ctx)=> DetailScreen(),
        VideoScreen.path: (ctx)=> VideoScreen()
      },
    );
  }
}

