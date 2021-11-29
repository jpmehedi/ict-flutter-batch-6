import 'package:bdfoodrecipe/widget/custom_button.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  static const String path = "DetailScreen";
  const DetailScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Map data =  ModalRoute.of(context)!.settings.arguments as Map;
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
              Image.asset(data["image"]),
              Positioned(
                bottom: 0,
                child: Container(
                  height: 48,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.black.withOpacity(0.25),
                  child: Text(
                    data["title"],
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
          ),
          Expanded(
            flex: 2,
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Ingredients",
                        style: TextStyle(
                          color: Colors.orange,
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                        ),
                    ),
                    Divider(
                      thickness: 2,
                      color: Colors.orange,
                    ),
                    for(int i =0; i < data["ingredients"].length; i++)
                    Row(
                      children: [
                        Container(
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(4)
                          ),
                        ),
                        SizedBox(width: 10,),
                        Text(data["ingredients"][i]),
                      ],
                    ),
                    Text("Direction",
                        style: TextStyle(
                          color: Colors.orange,
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                        ),
                    ),
                    Divider(
                      thickness: 2,
                      color: Colors.orange,
                    ),
                    for(int i =0; i < data["directions"].length; i++)
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(4)
                          ),
                        ),
                        SizedBox(width: 10,),
                        Expanded(child: Text(data["directions"][i])),
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
          
        ],
      ),
    );
  }
}

