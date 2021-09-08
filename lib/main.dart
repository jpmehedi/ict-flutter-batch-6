
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
            "i'm poor".toUpperCase(),
            style: TextStyle(
              // color: Colors.red
              // letterSpacing: 5.5,    
              color: Color(0xffff0000),
              fontSize: 28,
              fontWeight: FontWeight.bold,
              // fontWeight: FontWeight.w700,
              fontStyle: FontStyle.italic,
              fontFamily: "arial"
            ), 
          ),
        ),
      
        // body: Center(
        //   child: Image.asset(
        //     "assets/poor_man.png",
        //     width: 200,
        //     height: 200,
        //   ),
        // ),


        // body: Center(
        //   child: Image.network(
        //     "https://picsum.photos/250?image=9",
        //     width: 80,
        //     height: 80,
        //   ),
        // ),

        // body: Center(
        //   child: CircleAvatar(
        //     radius: 50,
        //     backgroundImage: NetworkImage(
        //       "https://picsum.photos/250?image=9",
        //     ),
        //   ),
        // ),

        body: Center(
          child: CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage(
              "assets/poor_man.png",
            ),
          ),
        ),
      ),
    ),
  );
}