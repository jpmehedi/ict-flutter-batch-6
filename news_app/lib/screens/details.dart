import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  static const String path = "DetailsScreen";
  const DetailsScreen({ Key? key }) : super(key: key);

  String getAuthor(String? author){
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
  Widget build(BuildContext context) {
    final Map newsData = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 10,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "International News",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(newsData['title']),
            Hero(
              tag: "${newsData['title']}",
              child: Image.network(
                getImage(newsData['urlToImage']),
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              )
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text("Author: ${getAuthor(newsData["author"])}")
                ),
                Expanded(
                  child: Text("Published Date:${newsData["publishedAt"]} ")
                )
              ],
            ),
            Text(newsData["description"])
          ],
        ),
      ),
    );
  }
}