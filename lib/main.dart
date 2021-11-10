
import 'package:demo_project/post_screen.dart';
import 'package:demo_project/responsive_screen.dart';
import 'package:demo_project/screen_one.dart';
import 'package:demo_project/screen_three.dart';
import 'package:demo_project/screen_two.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.landscapeRight
  // ]);
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Demo App",
      theme: ThemeData(
        primaryColor: Colors.orange,
        brightness: Brightness.light,
        // fontFamily: "Lobster",
        textTheme: TextTheme(
          headline1: TextStyle(color: Colors.red, fontSize: 28),
          headline6: TextStyle(color: Colors.green, fontSize: 12),
          bodyText1: TextStyle(color: Colors.black, fontSize: 16),
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.pink
        ),
        iconTheme: IconThemeData(
          color: Colors.purple
        )
      ),

      darkTheme: ThemeData(
        primaryColor: Colors.black,
        brightness: Brightness.dark,
        fontFamily: "Lobster",
        textTheme: TextTheme(
          headline1: TextStyle(color: Colors.white, fontSize: 28),
          headline6: TextStyle(color: Colors.white, fontSize: 12),
          bodyText1: TextStyle(color: Colors.white, fontSize: 16),
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.black
        ),
        iconTheme: IconThemeData(
          color: Colors.white
        )
      ),

      themeMode: ThemeMode.light,
      initialRoute: PostScreen.path,
      routes: {
        PostScreen.path : (ctx)=> PostScreen(),
        ResponsiveScreen.path : (ctx)=> ResponsiveScreen(),
        ScreenOne.path : (ctx)=> ScreenOne(),
        ScreenTwo.path : (ctx)=> ScreenTwo(),
        ScreenThree.path : (ctx)=> ScreenThree(),
      },
    )
  );
}


