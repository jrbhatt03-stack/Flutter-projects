import 'dart:io';
/* the ternary operator is like an inline if-else statement 
in Dart (and many other languages).
It’s called “ternary” because it takes three parts:
👉 condition ? expressionIfTrue : expressionIfFalse
there are two operator signs-  ?(if) and :(else) */
void main() {
  print("Enter your number - ");// asking print
  int num1 = int.parse(stdin.readLineSync()!); // taking input from user that's why readLineSync
  num1%2==0 ? print ("Even") : print ("Odd"); // num1%2==0 means if (?) num1 is divisible by 2 then it's even else (:) odd
  /* num1 being divided by 2 should give remainder 0 so, its even otherwise odd
  Eg. 20/2=10 remainder ie. 0, if 33/2=16 remainder ie. 1 */
}

/* basic maths concept of remainder,
It’s just what’s left over after you divide one number by another.

Let’s say you divide 10 by 3:
10 ÷ 3 = 3 (3.333) remainder 1 how?

That means:

3 fits into 10 three times (3 × 3 = 9)
After using up 9, 1 is left — that’s the remainder!

another example, 20 ÷ 6 = 3.333 ie. 3 the remainder is 2 how?

That means:

6 fits into 20 three times (3 x 6 = 18)
leftover is 2 — that’s the remainder!
*/
