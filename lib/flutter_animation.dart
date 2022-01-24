import 'package:flutter/material.dart';

class FlutterAnimation extends StatefulWidget {
  static const String path = "FlutterAnimation";
  const FlutterAnimation({ Key? key }) : super(key: key);

  @override
  State<FlutterAnimation> createState() => _FlutterAnimationState();
}

class _FlutterAnimationState extends State<FlutterAnimation> {
  bool isAnimated = false;
  double opacityLevel = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter Animation"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // AnimatedContainer(
            //   width: isAnimated ? 300 : 200,
            //   height: isAnimated ? 300  : 200,
            //   duration: Duration(
            //     seconds: 5
            //   ),
            //   decoration: BoxDecoration(
            //     color:isAnimated  ? Colors.orange : Colors.purple,
            //   ),
            //   child: FlutterLogo(),
            // ),


          // GestureDetector(
          //   onTap: (){
          //     setState(() {
          //       isAnimated = !isAnimated;
          //     });
          //   },
          //   child: Container(
          //     height: 400,
          //     width: 400,
          //     color: Colors.orange,
          //     child: AnimatedAlign(
          //       curve: Curves.easeInOutBack,
          //       alignment: isAnimated ?Alignment.topRight : Alignment.bottomLeft, 
          //       duration: Duration(
          //         seconds: 5
          //       ),
          //       child: FlutterLogo(size: 100,),
          //     ),
          //   ),
          // ),


          AnimatedOpacity(
            opacity: opacityLevel, 
            duration: Duration(seconds: 5),
            child: FlutterLogo(size:  200,),
          ),



            SizedBox(height: 40,),

            ElevatedButton(
              onPressed: (){
                if(opacityLevel == 0.0){
                setState(() {
                  opacityLevel = 1;
                });
                }else{
                 setState(() {
                  opacityLevel = 0.0;
                });
                }
              }, 
              child: Text("Start Animation")
            )
          ],
        ),
      ),
    );
  }
}