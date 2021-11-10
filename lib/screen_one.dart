import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ScreenOne extends StatelessWidget {
  static const  String path = "ScreenOne";
  ScreenOne({ Key? key }) : super(key: key);

  final List<Map<String, dynamic>> people = <Map<String, dynamic>>[
    {
      "id": 15,
      "name": "Mehedi Hasan",
      "email":"mehedi@genex.com"
    },
    {
      "id": 15,
      "name": "Mehedi Hasan",
      "email":"mehedi@genex.com"
    },
    {
      "id": 15,
      "name": "Mehedi Hasan",
      "email":"mehedi@genex.com"
    }

  ];

  String url = "https://flutter.dev/";

  Future launchUrl () async{
    if(await canLaunch(url)) {
      return launch(url);
    }else {
      print("Could not laucnh $url");
    }
  }

   String email = "smith@example.org";

  Future launchEmail () async{
    if(await canLaunch("mailto:$email?subject=News&body=New%20plugin")) {
      return launch("mailto:$email?subject=News&body=New%20plugin");
    }else {
      print("Could not laucnh email");
    }
  }

  Future launchPhone() async{
    if(await canLaunch("tel:01790180825")) {
      return launch("tel:0190180825");
    }else {
      print("Could launch phone");
    }
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Screen One"),
      ),
      body: Column(
        children: [
          Text(
            "The quick brown fox jumps over the lazy dog",
            style: Theme.of(context).textTheme.bodyText1
          ),
          Center(
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
              ),
              onPressed: (){
                // launchUrl();
                // launchEmail();
                launchPhone();
              }, 
              child: Text("Launch Phone")
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(
          Icons.add,
          color: Theme.of(context).iconTheme.color,
        ),
      ),
    );
  }
}