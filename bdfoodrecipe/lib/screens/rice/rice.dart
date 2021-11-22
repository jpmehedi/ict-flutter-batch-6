import 'package:bdfoodrecipe/data.dart';
import 'package:flutter/material.dart';

class RiceScreen extends StatelessWidget {

  final List rice = bdfood["rice"];
  int countIngredient(List ingredients) {
    return ingredients.length;
  }
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 5.0,
        mainAxisSpacing: 5.0 ,
        childAspectRatio: 8 / 7,
      ),
      itemCount: rice.length,
      itemBuilder: (BuildContext context, int index){
        return Card(
          elevation: 10,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(rice[index]["image"]),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(rice[index]["title"]),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.watch, color: Colors.red,),
                        Text("30 min")
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.food_bank, color: Colors.red,),
                        Text("${countIngredient(rice[index]["ingredients"])} Ingredients")
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        );
      }
    );
  }
}