

import 'package:demo_project/counter_app.dart';
import 'package:demo_project/logic_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LogicScreen()),
      ],
      child:MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Demo App",
        home: CounterApp()
      ),
   
    )
  );
}


