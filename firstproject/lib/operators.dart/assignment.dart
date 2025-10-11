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

  age = original % 5; // age = age % 5
  print("after modulus the age is $age");
}
// you can also use original variable to get original value instead of saving it in another variable