import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Background image section
                Image.asset(
                  "assets/sign_in.png",
                ),
                const Text(
                  "Get your groceries",
                  style: TextStyle(
                    color: Color(0xff030303),
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.normal,
                    fontSize: 26,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "with nectar",
                  style: TextStyle(
                    color: Color(0xff030303),
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.normal,
                    fontSize: 26,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    Expanded(flex: 2, child: Image.asset("assets/flag.png")),
                    const Expanded(
                        flex: 10,
                        child: Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: TextField(
                            keyboardType: TextInputType.number,
                          ),
                        ))
                    // TextField(),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 90),
                  child: Text(
                    "Or connect with social media",
                    style: TextStyle(
                      height: 5,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Gilroy',
                      fontSize: 14,
                      color: Color(0xff828282),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                //google login button
                Container(
                  height: 67,
                  width: 364,
                  decoration: BoxDecoration(
                    color: Color(0xff5383EC),
                    borderRadius: BorderRadius.circular(19),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 25),
                          child: Image.asset("assets/google_icon.png"),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 45),
                          child: Text(
                            "Continue with Google",
                            style: TextStyle(
                              color: Color(0xffFCFCFC),
                              fontSize: 18,
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                //facebook login button
                Container(
                  height: 67,
                  width: 364,
                  decoration: BoxDecoration(
                    color: Color(0xff4A66AC),
                    borderRadius: BorderRadius.circular(19),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 25),
                          child: Image.asset("assets/facebook_icon.png"),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 45),
                          child: Text(
                            "Continue with Facebook",
                            style: TextStyle(
                              color: Color(0xffFCFCFC),
                              fontSize: 18,
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
