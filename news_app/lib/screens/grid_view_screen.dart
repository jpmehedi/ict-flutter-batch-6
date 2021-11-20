import 'package:flutter/material.dart';

class GridViewScreen extends StatelessWidget {
  static const String path = "GridViewScreen";

 final List colour = [
    Colors.orange,
    Colors.purple,
    Colors.pink,
    Colors.grey,
    Colors.green,
    Colors.teal,
    Colors.blue
  ];

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GridView"),),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        padding: EdgeInsets.all(10),
        children: List.generate(7, (index) {
          return Container(
            height: 100,
            width: 100,
            color: colour[index],
            child: FlutterLogo()
          );
        })
      ),
    );
  }
}