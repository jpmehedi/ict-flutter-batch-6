import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          centerTitle: true,
          title: Text(
            "i'm poor".toUpperCase(),
            style: TextStyle(
              color: Color(0xffff0000),
              fontSize: 28,
              fontWeight: FontWeight.bold,
              fontFamily: "Righteous"
            ), 
          ),
        ),
        body: Center(
          child: Icon(
            Icons.photo_album,
            color: Colors.red,
            size: 80,
          ),
        )
      );
  }
}
