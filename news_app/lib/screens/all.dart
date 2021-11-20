import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:news_app/screens/details.dart';
class AllScreen extends StatefulWidget {
  const AllScreen({ Key? key }) : super(key: key);

  @override
  _AllScreenState createState() => _AllScreenState();
}

class _AllScreenState extends State<AllScreen> {
  DateTime currentDate = DateTime.now();
  String getCurrentDate(){
     String formattedDate = DateFormat('yyyy-MM-dd').format(currentDate);
     return formattedDate;
  }

  
  List allNewsData = [];
  Future getAllNews()async{
   final response = await http.get(Uri.parse("https://newsapi.org/v2/everything?q=tesla&from=${getCurrentDate()}&sortBy=publishedAt&apiKey=4159422918ad47e1bca6d72a504c5da6"));
   Map _allNews = {};
   if(response.statusCode == 200){
     setState(() {
      _allNews = jsonDecode(response.body);
       allNewsData = _allNews["articles"];  
     });
   }
  }

  String getAuthor(author){
    if(author != null) {
      return author;
    }else {
      return "UnKnown Author";
    }
  }

  String getImage(image){
    if(image != null){
      return image;
    }else{
      return "No image found!";
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
              onTap: (){
                Navigator.pushNamed(context, DetailsScreen.path, arguments: allNewsData[index]);
              },
              title: Text(getCurrentDate()),
              isThreeLine: true,
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(getAuthor(allNewsData[index]['author'])),
                  Text(allNewsData[index]['publishedAt']),
                ],
              ),
              trailing: Hero(
                tag: "${allNewsData[index]["title"]}",
                child: Image.network(
                  getImage(allNewsData[index]["urlToImage"]),
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        }
      ),
    );
  }
}