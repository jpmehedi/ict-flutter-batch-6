import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/home.dart';
import 'package:state_management/logic_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx) => LogicController()),
      ],
      builder: (context, child) {
        return Consumer<LogicController>(builder: (context, controller, index) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
                primarySwatch: Colors.blue, brightness: Brightness.light),
            darkTheme: ThemeData(
                primarySwatch: Colors.blue, brightness: Brightness.dark),
            themeMode: controller.isDark ? ThemeMode.dark : ThemeMode.light,
            home: HomeScreen(),
          );
        });
      },
    );
  }
}
