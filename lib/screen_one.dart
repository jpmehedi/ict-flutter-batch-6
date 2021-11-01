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
      body: Column(
        children: [
          Text(
            "The quick brown fox jumps over the lazy dog",
            style: Theme.of(context).textTheme.bodyText1
          ),
          Center(
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
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(
          Icons.add,
          color: Theme.of(context).iconTheme.color,
        ),
      ),
    );
  }
}