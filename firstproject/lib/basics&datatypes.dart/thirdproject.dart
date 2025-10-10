import 'dart:io'; // importing dart:io library to use stdin and stdout functions is must

void main() {
  print("Enter your Name = ");
  String name = stdin.readLineSync()!; // no need to use int.parse as we are taking string input
  print(name);
}