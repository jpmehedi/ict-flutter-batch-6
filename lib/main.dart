
import 'package:demo_project/counter_app.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Demo App",
      // theme: ThemeData(
      //   fontFamily: "Lobster"
      // ),
      // home: HomePage()
      // home: ProfileScreen(),
      home: CounterApp()
    ),
  );
}


