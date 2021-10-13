void main() {
  
//Fixed length list
  
//   List country = List.filled(5, 0, growable: true);
  
//   country[0] = "Bangladesh";  
//   country[1] = "India";
//   country[2] = "Pakistan";
//   country[3] = "Japan";
//   country[4] = "Nepal";
//   country[5] = "Noakhali";
//   country.add("Noakhali");
//    country.add("USA");
//    country.add("Germany");
  
//   country.addAll(["Noakhali", "USA", "Germany", "Argentina"]);
  
  
  
  
  //Growable list
  
  List<String> country = <String>[];
  
  country.add("Noakhali");
  country.add("USA");
  country.add("Germany");
  country.addAll(["Noakhali", "USA", "Germany", "Argentina"]);
  country.add("Brazil");
  
//   country.remove("Noakhali");
//   country.removeAt(3);
//   country.removeAt(0);
//   country.removeRange(2, 4 );
  
  country.insert(4, "Bangladesh");
  country.insertAll(2, ["UK", "Poland", "China", "South Koria"]);
  
  country.replaceRange(7,8, ["Netherland"]);
  
   print(country);
  
  print(country.length);
  print(country.first);
  print(country.last);
  print(country.reversed);
  
//   country.sort();
//   print(country);
  
  
  
  
  
  
  
  
  
 

  
  
}


