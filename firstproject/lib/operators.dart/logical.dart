void main () {
  String name = "jay"; // variable declared
  String surname = "bhatt"; // variable declared

  print((name == "jay") && (surname == "bhatt")); // if both same then true else false, output true, as both name & surname is correct
  //  "name equals to jay" "and" "surname equals to bhatt"
  print((name == "jay") && (surname == "patel")); // output false, even though name is correct but surname is wrong 
  
  print((name == "jay") || (surname == "bhatt")); // if any one is same then true else false, output true, as both name & surname is correct
  //  "name equals to jay" "or" "surname equals to bhatt"

  print((name == "ajay") || (surname == "bhatt")); // output true, even though name is wrong but surname is correct

  print((name == "ajay") || (surname == "patel")); // output false, as both name & surname is wrong

  print((name == "jay") != (surname == "bhatt")); // if both are different then true else false, output false, as both name & surname is correct
  //  "name not equals to jay" "and" "surname not equals to bhatt"
  print((name == "jay") != (surname == "patel")); // output true, as name is correct but surname is wrong

}