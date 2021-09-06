import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Demo App",
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Hello Bangladesh".toUpperCase(),
            style: TextStyle(
              // color: Colors.red
              // letterSpacing: 5.5,    
              color: Color(0xffff0000),
              fontSize: 28,
              // fontWeight: FontWeight.bold
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.italic,
              fontFamily: "arial"
            ), 
          ),
        ),
      ),
    ),
  );
}