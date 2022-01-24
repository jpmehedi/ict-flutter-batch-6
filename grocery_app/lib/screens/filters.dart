// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class Filters extends StatefulWidget {
  @override
  _FiltersState createState() => _FiltersState();
}

class _FiltersState extends State<Filters> {
  final checkBoxListOne = [
    // CheckBoxModal(isSelected: false),
    CheckBoxModal(title: "Eggs"),
    CheckBoxModal(title: "Noodles & Pasta"),
    CheckBoxModal(title: "Chips & Crisps"),
    CheckBoxModal(title: "Fast Food"),
  ];
  final checkBoxListTwo = [
    // CheckBoxModal(isSelected: false),
    CheckBoxModal(title: "Individual Callection"),
    CheckBoxModal(title: "Cocola"),
    CheckBoxModal(title: "Ifad"),
    CheckBoxModal(title: "Kazi Farmas"),
  ];

  @override
  Widget build(BuildContext context) {
    BorderRadiusGeometry radius = BorderRadius.only(
      topLeft: Radius.circular(30),
      topRight: Radius.circular(30),
    );
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.close_rounded,
          color: Color(0xff181725),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Filters",
          style: TextStyle(
            color: Color(0xff181725),
            fontFamily: "Gilroy",
            fontWeight: FontWeight.w700,
            fontSize: 20,
            wordSpacing: 1,
          ),
        ),
      ),
      body: SlidingUpPanel(
        minHeight: 900,
        maxHeight: 900,
        color: Color(0xffF2F3F2),
        boxShadow: const [
          BoxShadow(
            blurRadius: 0,
            color: Colors.transparent,
          ),
        ],
        borderRadius: radius,
        panel: Padding(
          padding: EdgeInsets.only(
            top: 30,
            left: 15,
          ),
          child: ListView(
            children: [
              Text(
                '''   Categories''',
                style: TextStyle(
                  color: Color(0xff181725),
                  fontSize: 24,
                  fontFamily: "Gilroy",
                  fontWeight: FontWeight.normal,
                ),
              ),
              SizedBox(height: 13),
              ...checkBoxListOne.map(
                (item) => ListTile(
                  onTap: () {
                    onAllClicked(item);
                    // setState(() {
                    //   item.isSelected = item.isSelected;
                    // });
                  }, // for ontap's{}
                  title: Text(
                    item.title!,
                    style: TextStyle(
                      // color: item.isSelected
                      //     ? Color(0xff181725)
                      //     : Color(0xffffffff),
                      color:
                          item.value == true ? Colors.green : Color(0xff181725),
                    ),
                  ),
                  leading: Checkbox(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    side: BorderSide(
                      color: Color(0xffC2C2C2),
                      width: 2,
                    ),
                    activeColor: Color(0xff53B175),
                    value: item.value,
                    onChanged: (value) => onAllClicked(item),
                  ),
                ),
              ),
              SizedBox(height: 40),
              Text(
                '''   Brand''',
                style: TextStyle(
                  color: Color(0xff181725),
                  fontSize: 24,
                  fontFamily: "Gilroy",
                  fontWeight: FontWeight.normal,
                ),
              ),
              SizedBox(height: 13),
              ...checkBoxListTwo.map(
                (item) => ListTile(
                  onTap: () => onAllClicked(item),
                  title: Text(
                    item.title!,
                    style: TextStyle(
                      color: Color(0xff181725),
                    ),
                  ),
                  leading: Checkbox(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    side: BorderSide(
                      color: Color(0xffC2C2C2),
                      width: 2,
                    ),
                    activeColor: Color(0xff53B175),
                    value: item.value,
                    onChanged: (value) => onAllClicked(item),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Theme(
        data: Theme.of(context).copyWith(
            floatingActionButtonTheme: FloatingActionButtonThemeData(
                extendedSizeConstraints: BoxConstraints.tightFor(
          height: 67,
          width: 364,
        ))),
        child: FloatingActionButton.extended(
          backgroundColor: Color(0xff53B175),
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(19),
          ),
          onPressed: () {},
          label: Text(
            "Apply Filter",
            style: TextStyle(
              color: Color(0xffFFF9FF),
              fontSize: 18,
              fontFamily: "Gilroy-bold",
            ),
          ),
        ),
      ),
    );
  }

  onAllClicked(CheckBoxModal ckbItem) {
    setState(() {
      ColoredBox(
        color: Color(0xff53B175),
      );
      ckbItem.value = !ckbItem.value;
      // ckbItem.isSelected = ckbItem.isSelected;
    });
  }
}

class CheckBoxModal {
  String? title;
  bool value;
  // bool isSelected;
  CheckBoxModal({
    this.title,
    this.value = false,
    // this.isSelected = true,
  });
}
