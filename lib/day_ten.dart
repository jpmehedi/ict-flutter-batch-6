import 'package:flutter/material.dart';

class DayTen extends StatelessWidget {
  const DayTen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("ListView & ListTile"),),
      drawer: Drawer(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset("assets/background.jpg"),
                Positioned(
                  top: 20,  
                  left: 20,
                  child: CircleAvatar(
                    radius: 28,
                    backgroundImage: AssetImage("assets/poor_man.png"),
                  ),
                ),

                Positioned(
                  left: 20,
                  top: 80,
                  child: Text(
                    "Mehedi Hasan",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24
                    ),
                  ),
                ),
                
                Positioned(
                  left: 20,
                  top: 110,
                  child: Text(
                    "mehedihasandinfrom@gamil.com",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14
                    ),
                  ),
                )
              ],
            ),

            ListTile(
              onTap: (){},
              leading: Icon(Icons.music_note),
              title: Text("Music"),
            ),
            Container(
              width: double.infinity,
              height: 1,
              color: Colors.red
            ),
        
            ListTile(
              onTap: (){},
              leading: Icon(Icons.music_note),
              title: Text("Music"),
            ),
            ListTile(
              onTap: (){},
              leading: Icon(Icons.music_note),
              title: Text("Music"),
            ),
            ListTile(
              onTap: (){},
              leading: Icon(Icons.music_note),
              title: Text("Music"),
            )
          ],
        ),
      ),
      body:ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context,int index){
          return ListTile(
            leading: Icon(Icons.list),
            trailing: Text("GFG",
                           style: TextStyle(
                             color: Colors.green,fontSize: 15),),
            title:Text("List item $index")
            );
        }
        ),
    );
  }
}