import 'dart:io';

void main() { // double is used for decimal values
  print("Enter your value =");
  double value = double.parse(stdin.readLineSync()!); /* double.parse is used to take decimal value input
  from user as stdin.readLineSync is used by default for string */
  print(value);
}