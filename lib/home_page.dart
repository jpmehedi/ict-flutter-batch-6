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
          // color: Colors.black,
          // height: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                color: Colors.red,
                child: FlutterLogo(
                  size: 100,
                ),
              ),
              Container(
                // height: double.infinity,
                color: Colors.orange,
                child: FlutterLogo(
                  size: 100,
                ),
              ),
              Container(
                color: Colors.purple,
                child: FlutterLogo(
                  size: 100,
                ),
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