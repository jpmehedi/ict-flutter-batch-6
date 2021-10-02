import 'package:flutter/material.dart';

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Button Screen"),),


      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: 60,
              height: 60,
              child: ElevatedButton(
                onPressed: (){}, 
                child: Text("Sign in"),
                style: ElevatedButton.styleFrom(
                  primary: Colors.teal,
                  elevation: 60,
                  shadowColor: Colors.red,
                  shape: CircleBorder()
                  // shape: RoundedRectangleBorder(
                  //   borderRadius: BorderRadius.circular(20),
                  //   side: BorderSide(
                  //     color: Colors.red,
                  //     width: 5,
                  //     style: BorderStyle.none
                  //   )
                  // )
                ),
              ),
            ),

            ElevatedButton(
              onPressed: (){},
              child: Text("Login"),
            ),

            TextButton(
              onPressed: (){}, 
              child: Text("Login"),
            ),

            OutlinedButton(
              onPressed: (){}, 
              child: Text("Login"),
            ),

            ElevatedButton.icon(
              onPressed: (){}, 
              icon: Icon(Icons.facebook), 
              label: Text("Log in with facebook")
            )

          ],
        ),
      ),
    );
  }
}