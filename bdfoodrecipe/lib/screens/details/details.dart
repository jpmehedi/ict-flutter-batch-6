import 'package:bdfoodrecipe/widget/custom_button.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  static const String path = "DetailScreen";
  const DetailScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Details"),
        actions: [
          IconButton(
            onPressed: (){}, 
            icon: Icon(Icons.share)
          )
        ],
      ),
      body: Column(
        children: [
          Stack(
            fit: StackFit.loose,
            children: [
              Image.asset("assets/images/bread/1.jpg"),
              Positioned(
                bottom: 0,
                child: Container(
                  height: 48,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.black.withOpacity(0.25),
                  child: Text(
                    "This is title",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w700
                    ),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
             CustomButton(
               color: Colors.red,
               onTap: (){},
               lebel: "Cooked",
               icon: Icons.check,
             ),
              CustomButton(
               color: Colors.orange,
               onTap: (){},
               lebel: "Favorite",
               icon: Icons.check,
             ),
             CustomButton(
               color: Colors.pink,
               onTap: (){},
               lebel: "Videos",
               icon: Icons.check,
             )
            ],
          )
          
        ],
      ),
    );
  }
}

