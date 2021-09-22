import 'package:flutter/material.dart';

class DayTen extends StatelessWidget {
  const DayTen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("ListView & ListTile"),),
      body: ListView.builder(
        itemCount: 50,
        itemBuilder: (BuildContext context, int index ){
          return ListTile(
            onTap: (){},
            leading: CircleAvatar(
              radius: 24,
              child: Icon(Icons.phone),
            ),
            title: Text("+01472822852"),
            subtitle: Text("Flutter Devloper"),
            trailing: Icon(Icons.arrow_forward_ios),
          );
        },
      )
    );
  }
}