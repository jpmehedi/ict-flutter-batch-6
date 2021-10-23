import 'package:demo_project/oop/father.dart';

class Son extends Father{ 
  String name = "asd";
  
  
  multiply() {
    int a = 20;
    int b = 2;
    return a * b;
  }


  @override
  void diaplay() {
    super.diaplay();
  }




}