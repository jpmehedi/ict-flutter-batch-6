import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff594DB5),
              Color(0xff928ACE),
              Color(0xff594DB5)
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight
          ),
        ),
        child: Column(
          children: [
            Container(
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Icon(Icons.arrow_back_ios, color: Colors.white,)
                    ),
                  ),
                  
                  Expanded(
                    flex: 10,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Today’s Weather",
                          style: TextStyle(
                            fontSize: 24, 
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                          ),
                        ),
                        Text(
                          "Sunday, 8 March 2021",
                          style: TextStyle(
                            fontSize: 11, 
                            fontWeight: FontWeight.w500,
                            color: Colors.white
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 32,),
            Container(
            width: double.infinity,
            height: 165,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xffBFB7F9),
                  Color(0xff928ACE),
                  Color(0xffBFB7F9),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight
              ),
              border: Border.all(
                color: Colors.white,
                width: 2
              ),
              borderRadius: BorderRadius.circular(40)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/sun_cloud_angled_rain.png",
                  height: 145,
                  width: 134,
                  fit: BoxFit.cover,
                ),
                Column(
                  children: [
                    Text(
                      "23°",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 72,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Text(
                      "Moon Cloud Fast Wind",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 11,
                        fontWeight: FontWeight.bold
                      ),
                    )
                  ],
                ),
              ],
            ),
           ),
           
          ],
        ),
      ),
    );
  }
}