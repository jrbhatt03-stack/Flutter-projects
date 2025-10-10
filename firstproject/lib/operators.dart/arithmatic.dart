void main() {
 // declaring two numbers 
 int num1=10, num2= 30;// you can use comma to separate multiple variable declarations

 // performing arithmetic calculation
 int sum=num1+num2;       // addition
 int diff=num1-num2;      // subtraction
 int unaryMinus = -num1;    /* unary minus 
 num1 = 10, -num1 means “the negative of num1”, So, -num1 = -10, 
 The value of num2 (30) doesn’t even matter here — you never used it in the calculation */
 int mul=num1*num2;       // multiplication
 double div=num1/num2;    // division
 int div2 =num1~/num2;     // integer division ~/ means is chop off the decimal part ie. 0.3333 to 0 only
 int mod=num1%num2;       /* show remainder Eg. you have only ₹10 and apples cost ₹30 each, you can’t even buy one apple.
  so ₹10 is what’s left over after trying. That’s your remainder. 🍎, if you had ₹30 ie. num1=30, num2=10
  you could have bought three apple then left over is ₹0. but actually its 10/30= 0.3333 but it will show 0 as remainder.*/
 
//Printing info 
 print("The addition is $sum.");
 print("The subtraction is $diff.");
 print("The unary minus is $unaryMinus.");
 print("The multiplication is $mul.");
 print("The division is $div.");
 print("The integer division is $div2.");
 print("The modulus is $mod."); 
}