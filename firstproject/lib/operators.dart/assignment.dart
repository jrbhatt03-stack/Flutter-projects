/*void main () {
  double age = 24; // using double as output could be in decimal

  age += 6; // age = age + 6
  print("after addition the age is $age");

  age -= 3; // age = age - 3
  print("after subtraction the age is $age");

  age *= 4; // age = age * 4
  print("after multiplication the age is $age");

  age /= 3; // age = age / 3
  print("after division the age is $age");
  
  age %= 5; // age = age % 5
  print("after modulus the age is $age");

  here value of age is changed after every operation or say updated value is used in next operation
} */


void main () {
  double age = 24; // using double as output could be in decimal
  double original = age; // save original value

  age += 6; // age = age + 6
  print("after addition the age is $age");

  age = original - 3; // subtract 3 from main variable (24) and not from updated variable (30)
  print("after subtraction the age is $age");

  age = original * 4; // age = age * 4
  print("after multiplication the age is $age");

  age = original / 3; // age = age / 3
  print("after division the age is $age");

  age = original % 5; // age = age % 5 (btw modulus means remainder) so 24/5 = 4.8 ignoring decimal part reamainder is 4 or say 4 * 5 = 20 so 24-20 = 4 the remainder
  print("after modulus the age is $age");
}
// used original variable to get original value instead of saving it in another variable