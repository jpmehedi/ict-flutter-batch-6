import 'package:bdfoodrecipe/data.dart';
import 'package:bdfoodrecipe/global/functions.dart';
import 'package:bdfoodrecipe/widget/custom_grid_tile.dart';
import 'package:flutter/material.dart';

class NonVegScreen extends StatelessWidget {
  
  final List nonVeg = bdfood["non_veg"];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: customGridDelegate(),
      padding: EdgeInsets.all(10),
      itemCount: nonVeg.length,
      itemBuilder: (BuildContext context, int index){
        return CustomGridTile(
          imageUrl: nonVeg[index]["image"],
          title: nonVeg[index]["title"],
        );
      }
    );
  }
}