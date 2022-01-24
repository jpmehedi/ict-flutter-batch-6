import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/logic_controller.dart';

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Third Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<LogicController>(
                builder: (context, logicController, index) {
              return Text("Counter:  ${logicController.number}");
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
              onPressed: () {},
              child: Text("Count"),
            )
          ],
        ),
      ),
      floatingActionButton: Consumer<LogicController>(builder: (__, logic, i) {
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
