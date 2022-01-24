// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class Favorurite extends StatelessWidget {
  static const String path = "Favorurite";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            leading: Image.asset("assets/sprite_can.png"),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 25),
                  child: Text("\$1.50"),
                ),
                Icon(Icons.arrow_forward_ios),
              ],
            ),
            title: Text("Sprite Can"),
            subtitle: Text("325ml,Price"),
          ),
          Divider(
            color: Colors.grey,
            height: null,
            thickness: 1,
          ),
          ListTile(
            leading: Image.asset("assets/diet_coke.png"),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 25),
                  child: Text("\$1.99"),
                ),
                Icon(Icons.arrow_forward_ios),
              ],
            ),
            title: Text("Diet Coke"),
            subtitle: Text("325ml,Price"),
          ),
          Divider(
            color: Colors.grey,
            height: null,
            thickness: 1,
          ),
          ListTile(
            leading:
             Image.asset("assets/apple.png"),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 25,),
                  child: Text("\$15.50"),
                ),
                Icon(Icons.arrow_forward_ios),
              ],
            ),
            title: Text("Apple & Grape Juice"),
            subtitle: Text("325ml,Price"),
          ),
          Divider(
            color: Colors.grey,
            height: null,
            thickness: 1,
          ),
          ListTile(
            leading: Image.asset("assets/cocacola.png"),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 25),
                  child: Text("\$4.99"),
                ),
                Icon(Icons.arrow_forward_ios),
              ],
            ),
            title: Text("Coca Cola Can"),
            subtitle: Text("325ml,Price"),
          ),
          Divider(
            color: Colors.grey,
            height: null,
            thickness: 1,
          ),
          ListTile(
            leading: Image.asset("assets/pepsi.png"),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 25),
                  child: Text("\$4.99"),
                ),
                Icon(Icons.arrow_forward_ios),
              ],
            ),
            title: Text("Pepsi Can"),
            subtitle: Text("325ml,Price"),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        height: 80,
        width: 200,
        child: FloatingActionButton.extended(
            onPressed: () {},
            label: Text(
              "Add to cart",
              style: TextStyle(
                fontSize: 30,
              ),
            )),
      ),
    );
  }
}


  // ListView(
          //   children: [
          //     ListTile(
          //       leading: Image.asset("assets/sprite_can.png"),
          //       trailing: Row(
          //         children: [
          //           Text("\$1.50"),
          //           Icon(Icons.arrow_forward_ios),
          //         ],
          //       ),
          //       title: Text("Sprite Can"),
          //       subtitle: Text("325ml,Price"),
          //     ),
          //     // ListTile(
          //     //   leading: Image.asset("assets/sprite_can.png"),
          //     //   trailing: Row(
          //     //     children: [
          //     //       Text("\$1.50"),
          //     //       Icon(Icons.arrow_forward_ios),
          //     //     ],
          //     //   ),
          //     //   title: Text("Sprite Can"),
          //     //   subtitle: Text("325ml,Price"),
          //     // ),
          //   ],
          // );