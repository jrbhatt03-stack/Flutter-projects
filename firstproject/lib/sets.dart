/* void main() {
  Set<int> numbers = {1,1,2,3,4,4,5};
  numbers.add(9); // Trying to add a duplicate value
  print(numbers); // Output: {1, 2, 3, 4, 5, 9} // as sets do not allow duplicate values

  // and some more commands just like lists

  // print(numbers.length);
  // print(numbers.contains());
  // print(numbers.elementAt(index));
  // and so on...
} */

void main() {
  Set<int> numbers = {1,1,2,3,4,4,5};
  Set<int> numbers1 = {6,7,8,9,10};
  numbers.addAll(numbers1); // Merging two sets
  print(numbers); // printing the merged set
}