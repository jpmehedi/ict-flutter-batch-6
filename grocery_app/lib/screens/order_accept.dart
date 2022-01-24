import 'package:flutter/material.dart';

class AcceptScreen extends StatelessWidget {
  const AcceptScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/accept.png",
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                "Your Order has been accepted",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Text(
                "Your items has been placcd and is on it's way to being processed",
                style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                ),
              ),
              SizedBox(
                height: 150,
              ),
              Container(
                width: double.infinity,
                child: FlatButton(
                  padding: EdgeInsets.all(25),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(19),
                    ),
                  ),
                  color: Colors.green,
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (ctx) => AlertDialog(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(16))),
                        actions: [
                          Icon(Icons.close),
                          Column(
                            children: [
                              Image.asset(
                                "assets/groseries.png",
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Oops! Order Faield",
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "something went tembly wrong",
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.5),
                                ),
                              ),
                              SizedBox(height: 20),
                              Container(
                                width: double.infinity,
                                child: FlatButton(
                                  padding: EdgeInsets.all(25),
                                  onPressed: () {},
                                  child: Text(
                                    "Please Try Again",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(16)),
                                  ),
                                  color: Colors.green,
                                ),
                              ),
                              SizedBox(height: 20),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Back to home",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                  child: Text(
                    "Track Order",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Back to home",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
