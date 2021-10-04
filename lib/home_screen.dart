import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  List<Widget> selectedScreen = [
    Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.white,
    ),
    Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.green,
    ),
    Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.orange,
    ),
    Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.orange,
    ),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BottomNavigationBar"),),
      body: selectedScreen.elementAt(selectedIndex),
      bottomNavigationBar: SizedBox(
        height: 120,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Setting"
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.location_city),
              label: "Location"
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu),
              label: "Menu"
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home"
            ),
          ],
      
          currentIndex: selectedIndex,
          selectedItemColor: Colors.teal,
          unselectedItemColor: Colors.red,
          selectedFontSize: 24,
          unselectedFontSize: 20,
          iconSize: 40,
          elevation: 20,
          // backgroundColor: Colors.black,
          onTap: (int index){
            setState(() {
              selectedIndex = index;
            });
          },
      
      
        ),
      ),
    );
  }
}