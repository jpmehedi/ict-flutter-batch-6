import 'package:demo_project/screen_two.dart';
import 'package:flutter/material.dart';

class ScreenOne extends StatelessWidget {
  static const  String path = "ScreenOne";
  const ScreenOne({ Key? key }) : super(key: key);

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
            Navigator.pushNamed(context, ScreenTwo.path);
          }, 
          child: Text("Screen One")
        ),
      ),
    );
  }
}