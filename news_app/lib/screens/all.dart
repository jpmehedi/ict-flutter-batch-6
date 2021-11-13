import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class AllScreen extends StatefulWidget {
  const AllScreen({ Key? key }) : super(key: key);

  @override
  _AllScreenState createState() => _AllScreenState();
}

class _AllScreenState extends State<AllScreen> {
  final String url = 'https://newsapi.org/v2/everything?q=tesla&from=2021-10-13&sortBy=publishedAt&apiKey=4159422918ad47e1bca6d72a504c5da6';
  List allNewsData = [];
  Future getAllNews()async{
   final response = await http.get(Uri.parse(url));
   Map _allNews = {};
   if(response.statusCode == 200){
     setState(() {
      _allNews = jsonDecode(response.body);
       allNewsData = _allNews["articles"];  
     });
   }
  }

  @override
  void initState() {
    getAllNews();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15, right: 15, top: 15),
      child: ListView.builder(
        itemCount: allNewsData.length,
        itemBuilder: (BuildContext ctx, int index){
          return Card(
            elevation: 10,
            child: ListTile(
              title: Text(allNewsData[index]["title"]),
              subtitle: Text(allNewsData[index]['description']),
              trailing: Image.network("https://picsum.photos/250?image=9"),
            ),
          );
        }
      ),
    );
  }
}