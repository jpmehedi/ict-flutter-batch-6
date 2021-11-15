import 'package:flutter/material.dart';
import 'package:news_app/home_page.dart';
import 'package:news_app/screens/details.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'News App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: HomeScreen.path,
      routes: {
        HomeScreen.path: (ctx)=> HomeScreen(),
        DetailsScreen.path: (ctx)=> DetailsScreen()
      },
    );
  }
}
