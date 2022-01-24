// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class FindProducts extends StatelessWidget {
  const FindProducts({Key? key}) : super(key: key);

  static List images = [
    "assets/vegetable.png",
    "assets/cooking_oil.png",
    "assets/meat.png",
    "assets/bakery.png",
    "assets/dairy.png",
    "assets/beverages.png"
  ];
  static List food_name = [
    "Frash Fruits & Vegetable",
    "Cooking Oil & Ghee",
    "Meat & Fish",
    "Bakery & Snacks",
    "Dairy & Eggs",
    "Beverages"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text('Find Products'),
          titleTextStyle: TextStyle(
              fontWeight: FontWeight.w500, fontSize: 20, color: Colors.black),
          centerTitle: true,
          elevation: 0,
        ),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
          child: GridView.builder(
            itemCount: images.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: MediaQuery.of(context).size.width * .2,
              //crossAxisSpacing: MediaQuery.of(context).size.height * .1,
            ),
            itemBuilder: (context, index) {
              return Text("data");
              // return FindProductsCard(
              //   colour: Colors.lightBlue,
              //   title: food_name[index],
              //   img: images[index],
              // );
            },
            // children: [
            //   FindProductsCard(
            //     colour: Colors.lightBlue,
            //     title: "Frash Fruits & Vegetable",
            //     img: "assets/vegetable.png",
            //   ),
            //   FindProductsCard(
            //     colour: Colors.pink,
            //     title: "Cooking Oil & Ghee",
            //     img: "assets/cooking_oil.png",
            //   ),
            //   FindProductsCard(
            //     colour: Colors.purple,
            //     title: "Meat & Fish",
            //     img: "assets/meat.png",
            //   ),
            //   FindProductsCard(
            //     colour: Colors.orange,
            //     title: "Bakery & Snacks",
            //     img: "assets/bakery.png",
            //   ),
            //   FindProductsCard(
            //     colour: Colors.lightBlue,
            //     title: "Dairy & Eggs",
            //     img: "assets/dairy.png",
            //   ),
            //   FindProductsCard(
            //     colour: Colors.lightGreen,
            //     title: "Beverages",
            //     img: "assets/beverages.png",
            //   ),
            // ],
          ),
        ));
  }
}
