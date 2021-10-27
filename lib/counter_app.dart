import 'package:flutter/material.dart';

class CounterApp extends StatelessWidget {
  const CounterApp({ Key? key }) : super(key: key);


  showAlert(BuildContext context) {
    return showDialog(
      barrierDismissible: false,
      context: context, 
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("This is alert dialog"),
          content: Text("This is body of alert dialog ,This is body of alert dialog"),
          actions: [
            TextButton(
              onPressed: (){}, 
              child: Text("Yes")
            ),
            TextButton(
              onPressed: (){
                Navigator.pop(context);
              }, 
              child: Text("NO")
            )
          ],
        );
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("CounterApp"),),
      body: null,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){
          showAlert(context);
        }, 
        backgroundColor: Colors.orange,
        foregroundColor: Colors.green,
        focusElevation: 50,
        tooltip: "Click",
        elevation: 20,
        hoverColor: Colors.red,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: BorderSide(
            color: Colors.blue,
            width: 2
          )
        ),
        label: Text("Add"),
        icon: Icon(Icons.add),
      )

      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: Colors.orange,
      //   foregroundColor: Colors.green,
      //   focusElevation: 50,
      //   tooltip: "Click",
      //   elevation: 20,
      //   hoverColor: Colors.red,
      //   shape: RoundedRectangleBorder(
      //     borderRadius: BorderRadius.circular(20),
      //     side: BorderSide(
      //       color: Colors.blue,
      //       width: 2
      //     )
      //   ),
      //   onPressed: (){},
      //   child: Icon(Icons.add, color: Colors.pink,),
      // ),
    );
  }
}