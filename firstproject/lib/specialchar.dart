import 'dart:io';

void main() {
  //using \n for new line
  print("this is my country - \n india");
  
  //using \t for tab ie. space
  print("this is my name - \t jay");

  //btw stdout.write also provides new line
  stdout.write('''this is jay
  whats you name ?''');

  //same with print
  print(''' this is jay
  whats your name ?''');

  //now what if you want to print \n or \t as it is without using their functionality
  //here we use raw string by using 'r' before the string
  print(r"this is my country - \n india"); // output: this is my country - \n india
}