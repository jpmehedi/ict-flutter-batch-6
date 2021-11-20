import 'package:flutter/material.dart';
import 'package:news_app/home_page.dart';
import 'package:news_app/screens/details.dart';
import 'package:news_app/screens/grid_view_screen.dart';

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
      initialRoute: GridViewScreen.path,
      routes: {
        GridViewScreen.path: (ctx)=> GridViewScreen(), 
        HomeScreen.path: (ctx)=> HomeScreen(),
        DetailsScreen.path: (ctx)=> DetailsScreen()
      },
    );
  }
}
