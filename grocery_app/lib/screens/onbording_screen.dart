import 'package:flutter/material.dart';

class Onbording extends StatelessWidget {
  const Onbording({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            //background image
            Image.asset(
              "assets/onbording.png",
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fill,
            ),
            //backgrond rectangle image
            Positioned(
              top: 450,
              child: Image.asset(
                "assets/rectangle_onbording.png",
                //
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 450.09,
              left: 182.76,
              child: Image.asset(
                "assets/onbording_vector.png",
                width: 38.21,
                height: 43.53,
              ),
            ),
            Positioned(
              top: 500.28,
              left: 60.5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Welcome",
                    style: TextStyle(
                      fontFamily: 'Gilroy',
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,
                      fontSize: 48,
                      color: Color(0xffFFFFFF),
                    ),
                  ),
                  Text(
                    "To your Store",
                    style: TextStyle(
                      fontFamily: 'Gilroy',
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,
                      fontSize: 48,
                      color: Color(0xffFFFFFF),
                    ),
                  ),
                  SizedBox(height: 40),
                ],
              ),
            ),
            Positioned(
              top: 640.28,
              left: 59.5,
              child: Text(
                "Ger your groceries in as fast as one hour",
                style: TextStyle(
                  fontFamily: 'Gilroy',
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal,
                  fontSize: 16,
                  color: const Color(0xffFCFCFC).withOpacity(0.7),
                ),
              ),
            ),
            Positioned(
              top: 700,
              left: 25,
              child: Container(
                height: 64,
                width: 353,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Get Started",
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Gilroy',
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  style: TextButton.styleFrom(
                    primary: const Color(0xffFFF9FF),
                    backgroundColor: const Color(0xff53B175),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(19),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
