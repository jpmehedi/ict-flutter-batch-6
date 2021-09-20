import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage("assets/poor_man.png"),
            ),
            Text(
              "Mr. Mehedi",
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.w700,
                fontFamily: "Lobster"
              ),
            ),
            Text(
              "Flutter Devloper",
              style: TextStyle(
                color: Colors.white.withOpacity(0.75),
                fontWeight: FontWeight.w500,
                fontSize: 24,
                letterSpacing: 2.8,
                fontFamily: "Righteous"
              ),
            ),

            Divider(
              thickness: 2,
              color: Colors.white.withOpacity(0.50),
              indent: 120,
              endIndent: 120,
              height: 38,
            ),
            
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              height: 48,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8)
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.phone,
                    color: Colors.teal,
                    size: 28,
                  ),
                  SizedBox(width: 32,),
                  Text(
                    "+8801723158245",
                    style: TextStyle(
                      color: Colors.teal,
                      fontSize: 24,
                      letterSpacing: 1.8
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              height: 48,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8)
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.email,
                    color: Colors.teal,
                    size: 28,
                  ),
                  SizedBox(width: 32,),
                  Text(
                    "mehedi@augnitive.com",
                    style: TextStyle(
                      color: Colors.teal,
                      fontSize: 24,
                      letterSpacing: 1.8
                    ),
                  )
                ],
              ),
            )
            
          ],
        ),
      ),
    );
  }
}