import 'package:bdfoodrecipe/screens/bread/bread.dart';
import 'package:bdfoodrecipe/screens/desert/desert.dart';
import 'package:bdfoodrecipe/screens/fast_food/fast_food.dart';
import 'package:bdfoodrecipe/screens/non_veg/non_veg.dart';
import 'package:bdfoodrecipe/screens/rice/rice.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String path = "HomeScreen";
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          centerTitle: true,
          title: Text("BD FOOD RECIPE"),
          actions: [
            IconButton(
              onPressed: (){}, 
              icon: Icon(Icons.favorite)
            )
          ],
        ),
        drawer: Drawer(),
        body: Column(
          children: [
            TabBar(
              unselectedLabelColor: Colors.redAccent,
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.redAccent, Colors.orangeAccent]),
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.redAccent
              ),
              tabs: [
                Tab(
                  child: Text("Rice"),
                ),
                Tab(
                  child: Text("Bread"),
                ),
                Tab(
                  child: Text("Desert"),
                ),
                Tab(
                  child: Text("Fast Food"),
                ),
                Tab(
                  child: Text("Non-Veg"),
                ),
              ]
            ),

            Expanded(
              child: TabBarView(
                children: [
                  RiceScreen(),
                  BreadScreen(),
                  DesertScreen(),
                  FastFoodScreen(),
                  NonVegScreen()
                ]
              ),
            )
          ],
        ),
      ),
    );
  }
}