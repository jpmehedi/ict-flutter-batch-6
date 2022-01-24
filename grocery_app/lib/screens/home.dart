// ignore_for_file: unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'favorurite.dart';

class Foodlist extends StatelessWidget {
  static const String food = "FoodCart";
  const Foodlist({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        child: ListView.separated(
          separatorBuilder: (BuildContext context, int index) {
            return Divider(
              height: 0,
              thickness: 0.5,
              color: Colors.red,
            );
          },
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                Favorurite(),
              ],
            );
          },
        ),
      ),
    );
  }
}
