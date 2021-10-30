import 'package:flutter/material.dart';

class ScreenOne extends StatelessWidget {
  static const  String path = "ScreenOne";
  ScreenOne({ Key? key }) : super(key: key);

  final List<Map<String, dynamic>> people = <Map<String, dynamic>>[
    {
      "id": 15,
      "name": "Mehedi Hasan",
      "email":"mehedi@genex.com"
    },
    {
      "id": 15,
      "name": "Mehedi Hasan",
      "email":"mehedi@genex.com"
    },
    {
      "id": 15,
      "name": "Mehedi Hasan",
      "email":"mehedi@genex.com"
    }

  ];



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
      
        title: Text("Screen One"),
      ),
      body: Center(
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
          ),
          onPressed: (){
            // Navigator.pushNamed(context, ScreenTwo.path, arguments: [name, age]);
            // Navigator.pushNamed(context, ScreenTwo.path, arguments: {"name": name, "age": age});
          }, 
          child: Text("Screen One")
        ),
      ),
    );
  }
}