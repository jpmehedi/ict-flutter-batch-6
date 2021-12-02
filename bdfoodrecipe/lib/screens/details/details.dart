import 'package:bdfoodrecipe/screens/video/video.dart';
import 'package:bdfoodrecipe/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';

class DetailScreen extends StatelessWidget {
  static const String path = "DetailScreen";
  const DetailScreen({ Key? key }) : super(key: key);

  shareData(data){
    String shareInfo = '''
    
    ${data["title"]}

    ${data["ingredients"].toString()}
    
    ${data["directions"].toString()}
    
    ''';
     Share.share('$shareInfo', subject: 'Look what I made!');
  }

  @override
  Widget build(BuildContext context) {
    final Map data =  ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Details"),
        actions: [
          IconButton(
            onPressed: (){
              shareData(data);
            }, 
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
                  padding: EdgeInsets.all(5),
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
               icon: Icons.favorite,
             ),
             CustomButton(
               color: Colors.pink,
               onTap: (){
                 Navigator.pushNamed(context, VideoScreen.path, arguments: data);               
               },
               lebel: "Videos",
               icon: Icons.videocam_rounded
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

