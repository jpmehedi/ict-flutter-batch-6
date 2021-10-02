void main() {
  print(checkEvenOdd("sjf"));
}


//Write a dart function to return even or odd number 



checkEvenOdd(var number) {
  
  if(number == null || number.runtimeType == double || number.runtimeType == bool || number.runtimeType == String) {
    
    return "Exception";
    
  }
  
  
  if(number.runtimeType == int) {
    
    if(number % 2 == 0) {
       return "Even";
     }else{
       return "odd";
    }
    
  }
  
//   return "Exception";
   
}




// addTwo() {
//   int a = 10;
//   int b = 20;
  
//   int sum = a + b;
  
// //   print(sum);
  

  
// //   return sum;
  
//   String name = "Mehedi Hasan";
  
//   return name;
  
  
// }



