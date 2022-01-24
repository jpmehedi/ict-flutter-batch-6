import 'dart:ui';

import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(
              child: Image.asset("assets/Rectangle.png"),
            ),
            title: Text(
              "Afsar Hossen",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            subtitle: Text("Imshuvo97@gmail.com"),
          ),
          Divider(
            thickness: .25,
            color: Colors.black,
          ),
          ListTile(
            leading: Image.asset("assets/Orders icon.png"),
            title: Text(
              "Orders",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          Divider(
            thickness: .25,
            color: Colors.black,
          ),
          ListTile(
            leading: Image.asset("assets/My Details icon.png"),
            title: Text(
              "My Details",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          Divider(
            thickness: .25,
            color: Colors.black,
          ),
          ListTile(
            leading: Image.asset("assets/Delicery address.png"),
            title: Text(
              "Delivery Address",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          Divider(
            thickness: .25,
            color: Colors.black,
          ),
          ListTile(
            leading: Image.asset("assets/Vector icon.png"),
            title: Text(
              "Payment Methods",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          Divider(
            thickness: .25,
            color: Colors.black,
          ),
          ListTile(
            leading: Image.asset("assets/Promo Cord icon.png"),
            title: Text(
              "Promo Code",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          Divider(
            thickness: .25,
            color: Colors.black,
          ),
          ListTile(
            leading: Image.asset("assets/Bell icon.png"),
            title: Text(
              "Notifactions",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          Divider(
            thickness: .25,
            color: Colors.black,
          ),
          ListTile(
            leading: Image.asset("assets/help icon.png"),
            title: Text(
              "Help",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          Divider(
            thickness: .25,
            color: Colors.black,
          ),
          ListTile(
            leading: Image.asset("assets/about icon.png"),
            title: Text(
              "About",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          Divider(
            thickness: .25,
            color: Colors.black,
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            height: 67,
            width: 364,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(19),
                color: Color(0xffFF2F3F2)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 100),
                  child: Icon(
                    Icons.logout,
                    color: Color(0xffF53B175),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 180),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Log Out",
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xffF53B175),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
// Container(
//         width: 364,
//         height: 67,
//         decoration: BoxDecoration(
//             color: Color(0xffF2F3F2), borderRadius: BorderRadius.circular(19)),
//         child: ElevatedButton.icon(
//             onPressed: () {}, icon: Icon(Icons.home), label: Text("Log Out")),
//       ),



