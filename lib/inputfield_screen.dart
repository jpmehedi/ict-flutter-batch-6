import 'package:flutter/material.dart';

class InputFieldScreen extends StatelessWidget {
  const InputFieldScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.teal,
      appBar: AppBar(title: Text("TextField"),),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [

            TextField(
              keyboardType: TextInputType.emailAddress,
              // maxLength: 4,
              // maxLines: 4,
              // textDirection: TextDirection.rtl,
              // autofocus: true,
              // obscureText: true,
              decoration: InputDecoration(
                // contentPadding: EdgeInsets.only(right: 50, top: 50, bottom: 50),
                hintText: "Enter your name",
                hintStyle: TextStyle(
                  color: Colors.orange
                ),
                labelText: "Full Name",
                labelStyle: TextStyle(
                  color: Colors.orange
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Colors.orange,
                  )
                ),
                focusedBorder: OutlineInputBorder(
                  // borderRadius: BorderRadius.circular(10),
                  // borderSide: BorderSide(
                  //   color: Colors.pink
                  // )
                  borderSide: BorderSide.none
                ),
                prefixIcon:  Icon(Icons.person),
                suffixIcon: IconButton(
                  onPressed: (){}, 
                  icon: Icon(Icons.search)
                ),
                filled: true,
                fillColor: Colors.white
              ),
            )

          ],
        ),
      ),
    );
  }
}