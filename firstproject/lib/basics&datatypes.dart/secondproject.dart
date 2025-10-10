import 'dart:io';

void main () {
    print("Enter your Number here ="); //show this on the screen first
    int num1 = int.parse(stdin.readLineSync()!);/*take number from user 
    (now here we used int.parse as stdin.readlinesync is used for string 
    but to use for integer we need to write int.parse aslo then stdin inside(). also
    we used null check ! to show value can't be null/empty)*/

   print("Enter you second number here =");
    int num2 = int.parse(stdin.readLineSync()!);
    int sum = num1 + num2; //adding two numbers ie. first and second numbr input

   /* print("The sum of 1st and 2nd number is = $sum"); {proper statement} or 
   use below short version print (sum); {direct ans only} "$" used to show sum variable
   along with string "The sum of.. " */

  print(sum); // saying just add the numbers eg. 10+20 = 30 //
}

/* you can also use stdout.write instead of print both are same but
print gives new line after showing output but stdout.write
doesn't give new line after showing output */