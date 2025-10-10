import 'dart:io';

void main() {
  stdout.write("1.Your Number :- "); // you can have used print also instead of stdout.write
  int num1 = int.parse(stdin.readLineSync()!);

  stdout.write("2.Your another Number :- ");
  int num2 = int.parse(stdin.readLineSync()!);

  int sum = num1 + num2;
  print(sum);
}