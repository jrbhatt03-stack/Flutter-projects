/* void main () {
  print("hello my name is JAY");
} */

/* void main () {  // wrong solution
  print('hello i am john doe');
  print("hello i am john doe");
  print('''hello i am 
  john doe''');
} */

// correct solution


// ignore: dangling_library_doc_comments
/// Required Output
/// Hello I am "John Doe" 
/// Hello I'am "John Doe"

  /* void main () {
  print('hello i am "john doe"');
  print("hello i'am \"john doe\""); // we need to use backslash(\) before double quote(") to escape it
  } */

 /* void main() {
  const int number = 7;
  print("the value of number is $number");
 } */

 /* import 'dart:io';

 void main() { // simple intrest formula = (P * R * T) / 100 where
  print("Enter principle amount = ");
  int principle = int.parse(stdin.readLineSync()!);
  print("Enter rate of intrest = ");
  int rate = int.parse(stdin.readLineSync()!);
  print("Enter time period= ");
  int time = int.parse(stdin.readLineSync()!);
  double simpleintrest = (principle * rate * time) / 100; // double cause value can be in decimal
  // either you could have used "~/" instead of "/" + "double"
  print("The simple intrest is $simpleintrest");
 } */

 /* import 'dart:io';

  void main() {
    print("Enter your number");
    int number = int.parse(stdin.readLineSync()!);
    int square = number * number;
    print("The square of $number is $square");
  } */
  import 'dart:io';
  void main() {
    print("Enter your first Name");
    String firstName = stdin.readLineSync()!;
    print("Enter your last Name");
    String lastName = stdin.readLineSync()!;
    print("Hello my full name is $firstName $lastName");
    print("Hello my full name is $lastName $firstName");
    
  }

