
import 'package:demo_project/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Demo App",
      theme: ThemeData(
        fontFamily: "Lobster"
      ),
      home: HomePage()
    ),
  );
}


