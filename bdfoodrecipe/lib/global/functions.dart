  import 'package:flutter/material.dart';

SliverGridDelegateWithFixedCrossAxisCount customGridDelegate() {
    return SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      childAspectRatio: 0.8,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      
    );
}


int countIngredients(List ingredients){
  return ingredients.length;
}