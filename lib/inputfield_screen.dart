import 'package:demo_project/view_screen.dart';
import 'package:flutter/material.dart';

class InputFieldScreen extends StatefulWidget {
  InputFieldScreen({ Key? key }) : super(key: key);

  @override
  _InputFieldScreenState createState() => _InputFieldScreenState();
}

class _InputFieldScreenState extends State<InputFieldScreen> {
  TextEditingController textEditingController = TextEditingController();

  int  age = 25;

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
              onChanged: (String name){
                  setState(() {
               
                  });
              },
              controller: textEditingController,
              keyboardType: TextInputType.emailAddress,
              // maxLength: 4,
              // maxLines: 4,
              // textDirection: TextDirection.rtl,
              // autofocus: true,
              // obscureText: true,
              // obscuringCharacter: "*",
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
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Colors.pink
                  )
                  // borderSide: BorderSide.none
                ),
                prefixIcon:  Icon(Icons.person),
                suffixIcon: IconButton(
                  onPressed: (){}, 
                  icon: Icon(Icons.search)
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            SizedBox(height: 20,),

           textEditingController.text.isNotEmpty ?  Text(
              "${textEditingController.text}",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w700
              ),
            ) : Text("Empty"),
           
           SizedBox(height: 20,),

            ElevatedButton(
              onPressed: (){
                Route route = MaterialPageRoute(builder: (ctx)=> ViewScreen(name: textEditingController.text, age: age,));
                Navigator.push(context, route);
              }, 
              child: Text("Click me")
            )
          ],
        ),
      ),
    );
  }
}