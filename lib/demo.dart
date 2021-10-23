void main() {
  

  String name = "Mehedi";
  
  //Fixed length list
  
  //["Bangladesh", "Japan", "India", "Nepal","China"]
  
//   List country = List.filled(5, null, growable: true);
  

//   country[0] = "Bangladesh";
//   country[1] = "Japan";
//   country[2] = "India";
//   country[3] = "Nepal";
//   country[4] = "China";
//   country.add("Bangladesh");
  

    
//   print(country);
  
  //Growable list
  
  
  List country = [];
  
  country.add("Bangladesh");
  country.add("India");
  
  country.addAll(["Bangladesh", "Japan", "India", "Nepal","China"]);
   country.add("asdnasdn");
  
   
//   print(country);
  
//   country.remove("China");
 
//   country.removeAt(2);
  
//   country.replaceRange(2, 4, ["Mayanmer", "Butan"] );
  
  
//   var lenght = country.length;
  
  
  country.insert(2, "USA");
  
  country.insertAll(5, ["UK", "Netherland"]);
  
//   print(country.length);
  // print(country.sort());

  country.sort();
//   print(country.reversed);
  
  
//   print(lenght);
  print(country);
  
}


