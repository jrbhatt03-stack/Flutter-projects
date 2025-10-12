// ignore_for_file: unnecessary_type_check (have to use it for demonstration purpose)

void main() {
  String name = "jay"; // variable declared
  int age = 21; // variable declared 
  
  print(name is String); // checks if name is String type, output true
  print(age is int); // checks if age is int type, output true
  /* "is" operator is used to check the type of a variable same or not */
  print(name is! String); // checks if name is not String type, output false
  print(age is! int); // checks if age is not int type, output false
  /* "is!" ie. is not used to check the type of a variable different or not */
}