import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/details.dart';
import 'package:state_management/logic_controller.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        actions: [
          Consumer<LogicController>(builder: (context, controller, index) {
            return Switch(
                value: controller.isDark,
                onChanged: (value) {
                  controller.changeTheme(value);
                });
          })
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            ListTile(title: Consumer<LogicController>(
                builder: (context, logicController, index) {
              return Text("Count value:${logicController.addTwoNumber()}");
            })),
            ListTile(
              title: Text("This is title"),
            ),
            ListTile(
              title: Text("This is title"),
            )
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<LogicController>(
                builder: (context, logicController, index) {
              return Text(" Counter:  ${logicController.number}");
            }),
            Consumer<LogicController>(
                builder: (context, logicController, index) {
              return Text(
                  "Third number Counter:  ${logicController.thirdNumber}");
            }),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                Route route =
                    MaterialPageRoute(builder: (ctx) => DetailsScreen());
                Navigator.push(context, route);
              },
              child: Text("Click"),
            ),
          ],
        ),
      ),
      floatingActionButton:
          Consumer<LogicController>(builder: (context, logicController, index) {
        return FloatingActionButton(
          onPressed: () {
            logicController.count();
          },
          child: Icon(Icons.add),
        );
      }),
    );
  }
}
