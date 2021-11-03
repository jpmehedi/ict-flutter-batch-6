import 'package:flutter/material.dart';

class ResponsiveScreen extends StatelessWidget {
    static const  String path = "ResponsiveScreen";
  const ResponsiveScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    
    return Scaffold(
      appBar: AppBar(title: Text("Responsive $width"),),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [

          Row(
              children: [
                Container(
                  height: width * 0.50,
                  width: width / 3,
                  color: Colors.pink,
                ),
                Container(
                  height: width * 0.50,
                  width: width /3,
                  color: Colors.red,
                ),
                Container(
                  height: width * 0.50,
                  width: width/3,
                  color: Colors.pink,
                ),
              ],
            ),
          //  Row(
          //    children: [
          //      Expanded(
          //        flex: 2,
          //        child: Container(
          //          height: 150,
          //          color: Colors.pink,
          //        ),
          //      ),
          //      Expanded(
          //        flex: 6,
          //        child: Container(
          //            height: 150,
          //            color: Colors.red,
          //          ),
          //      ),
          //      Expanded(
          //        flex: 4,
          //        child: Container(
          //            height: 150,
          //            color: Colors.yellow,
          //          ),
          //      ),
          //    ],
          //  ),
            // Row(
            //   children: [
            //     Container(
            //       height: 150,
            //       width: 150,
            //       color: Colors.pink,
            //     ),
            //     Container(
            //         height: 150,
            //         width: 150,
            //         color: Colors.red,
            //       ),
            //     Container(
            //         height: 150,
            //         width: 150,
            //         color: Colors.pink,
            //       ),
            //   ],
            // ),
            Container(
              height: 150,
              width: 150,
              color: Colors.green,
            ),
            Container(
              height: 150,
              width: 150,
              color: Colors.yellow,
            ),
            Container(
              height: 150,
              width: 150,
              color: Colors.purple,
            ),
            
          ],
        ),
      ),
    );
  }
}