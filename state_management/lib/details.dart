import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/logic_controller.dart';
import 'package:state_management/third_screen.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<LogicController>(
                builder: (context, logicController, index) {
              return Text(" Counter:  ${logicController.number}");
            }),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                Route route = MaterialPageRoute(
                  builder: (ctx) => ThirdScreen(),
                );
                Navigator.push(context, route);
              },
              child: Text("Click"),
            ),
          ],
        ),
      ),
      floatingActionButton:
          Consumer<LogicController>(builder: (context, logic, index) {
        return FloatingActionButton(
          onPressed: () {
            logic.thirdNumberCount();
          },
          child: Icon(Icons.add),
        );
      }),
    );
  }
}
