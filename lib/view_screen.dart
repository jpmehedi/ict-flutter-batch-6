import 'package:flutter/material.dart';

class ViewScreen extends StatelessWidget {

  final String? name;
  final int? age;
  const ViewScreen({this.name, this.age});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("View Screen"),),
      body: Column(
        children: [
          Text("$name"),
          Text("$age")
        ],
      ),
    );
  }
}