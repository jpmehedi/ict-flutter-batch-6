import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          centerTitle: true,
          title: Text(
            "i'm poor".toUpperCase(),
            style: TextStyle(
              color: Color(0xffff0000),
              fontSize: 28,
              fontWeight: FontWeight.bold,
              fontFamily: "Righteous"
            ), 
          ),
        ),
        body: Container(
          height: double.infinity,
          child: Row(
            
            children: [
              Container(
                // padding: EdgeInsets.only(
                //   top: 50,
                //   left: 40
                // ),

                padding: EdgeInsets.symmetric(
                  vertical: 50,
                  horizontal: 30,
                ),

                margin: EdgeInsets.only(left: 50),
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.red,
                  // border: Border.all(
                  //   color: Colors.black,
                  //   width: 10
                  // ),

                  // border: Border(
                  //   left: BorderSide(
                  //     color: Colors.green,
                  //     width: 5
                  //   ),
                  //   right: BorderSide(
                  //     color: Colors.black,
                  //     width: 5
                  //   ),
                  //   bottom:  BorderSide(
                  //     color: Colors.yellow,
                  //     width: 5
                  //   ),
                  //   top: BorderSide(
                  //     color: Colors.orange,
                  //     width: 5
                  //   ),
                    
                  // )

                  // borderRadius: BorderRadius.circular(50),

                  // borderRadius: BorderRadius.only(
                  //   topLeft: Radius.circular(30),
                  //   bottomRight: Radius.circular(50),
                  //   topRight: Radius.circular(40)
                  // ),

                  // boxShadow: [
                  //   BoxShadow(
                  //     color: Colors.orange,
                  //     blurRadius: 15,
                  //     spreadRadius: 7,
                  //     offset: Offset(-7, -7)
                  //   )
                  // ],


                  // gradient: LinearGradient(
                  //   colors: [
                  //     Colors.orange,
                  //     Colors.red,
                  //     Colors.green
                  //   ],
                  //   begin: Alignment.topLeft,
                  //   end: Alignment.bottomRight,
                  //   stops: [
                  //     0.5,
                  //     0.8,
                  //     0.3
                  //   ]
                  // )

                  // gradient: RadialGradient(
                  //   colors: [
                  //     Colors.orange,
                  //     Colors.red,
                  //     Colors.green
                  //   ],
                    // begin: Alignment.topLeft,
                    // end: Alignment.bottomRight,
                  //   stops: [
                  //     0.5,
                  //     0.8,
                  //     0.3
                  //   ]
                  // ),




                ),
                child: Text("Hello Bangladesh"),
              )
            ],
          ),
        )
      );
  }
}



// Container(
//           color: Colors.pink,
//           width: 400,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Container(
//                 color: Colors.red,
//                 child: FlutterLogo(
//                   size: 100,
//                 ),
//               ),
//               Container(
                // width: double.infinity,
//                 color: Colors.orange,
//                 child: FlutterLogo(
//                   size: 100,
//                 ),
//               ),
//               Container(
//                 color: Colors.purple,
//                 child: FlutterLogo(
//                   size: 100,
//                 ),
//               )
//             ],
//           ),
//         )