/* void main () {
  int num1 = 10;
  num1 = 20; // updated value of num1
  print(num1); // output won't be 10 it will be 20 as value is updated/got override
  // output = 20
  // to make sure it won't get updated use const keyword
} */

void main() {
  const num1 = 10; //rule: const variable must be initialized at the time of declaration (you can't declare after initialization ie. you have to declare the value in the same line)
  // num1 = 20; // error: Constant variables can't be assigned a value.
  print(num1);
}