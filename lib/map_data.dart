void main() {
  
  //List item = [];
  
//   Map<String, dynamic> student = <String, dynamic>{
    
    //Key : value
//     "id": 01,
//     "name": "Mehedi",
//     "age": 24,
//     "gender": "Male",
//     "name": "asdnas"
//   };
  
  
  List<Map<String, dynamic>> student = [
    {
      "id": 01,
      "name": "Mehedi",
      "age": 28,
      "gender": "Male",
    },
    
    {
      "id": 02,
      "name": "Hasan",
      "age": 24,
      "gender": "Male",
    },
    
    {
      "id": 03,
      "name": "XYZ",
      "age": {
        "child": 10,
        "adult": 18,
        "old": [
          50,60,70
        ]
      },
      "gender": [
        "Male",
        "Female"
      ],
    }
    
  ];
  
  
  print(student[2]["age"]["old"][0]);


  for(int i = 0; i < student.length; i++) {
    if(student[i]["age"] is Map) {
      Map age = student[i]["age"];
      age.forEach((key, value) {
       
        if(value is List) {
          for(int j = 0; j < value.length; j++) {
            print(value[j]);
          }
        }else{
          print(value);
        }
      });
      continue;
    }
    print(student[i]['age']);
  }
  
  
  
//   //Add data 
  
//   student["roll"] = "44";
  
//   student.addAll({"hobby": "Gamming", "skill": "Flutter"});
  
  
//   //Remove data from map
  
//   student.remove("hobby");
  
//   // Update data from map
  
//   student.update(  "skill", (value)=> "Dart");
//   student["skill"] = "NodeJS";
  
  
  
  
//   print(student);
  
  
//   print(student.keys);
//   print(student.values);
  
//   print(student.isEmpty);
//   print(student.isNotEmpty);
  
//   student.clear();
//   print(student.isNotEmpty);
//   print(student);
  
  
}




