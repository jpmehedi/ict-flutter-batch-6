import 'package:flutter/material.dart';
import 'package:news_app/screens/all.dart';
import 'package:news_app/screens/business.dart';
import 'package:news_app/screens/gadgets.dart';
import 'package:news_app/screens/sports.dart';

class HomeScreen extends StatelessWidget {
  static const String path = "HomeScreen";
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 4, 
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 10,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          title: Text(
            "International News",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700
            ),
          ),
          actions: [
            IconButton(
              onPressed: (){}, 
              icon: Icon(Icons.notification_important)
            )
          ],
        ),
        drawer: Drawer(),
        body: Column(
          children: [
            TabBar(
              labelPadding: EdgeInsets.all(10),
              labelColor: Colors.blue,
              indicatorColor: Colors.black,
              indicatorSize: TabBarIndicatorSize.tab,
              unselectedLabelColor: Colors.grey,
              tabs: [
                Text("All"),
                Text("Business"),
                Text("Gadgets"),
                Text("Sports"),
              ]
            ),
            Expanded(
              child: TabBarView(
                children: [
                  AllScreen(),
                  BusinessScreen(),
                  GadgetsScreen(),
                  SportsScreen()
                ]
              ),
            )
          ],
        ),
      ),
    );
  }
}