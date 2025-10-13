void main() {
  List<int> numbers = [1,2,3,4,5];
  // numbers.add(6); // Add an element to the end of the list
  // numbers.remove(2); // Remove the first occurrence of the element
  // numbers.removeAt(0); // Remove the element at the specified index 0 here ie. 1
  // print(numbers); 

  // print(numbers.contains(2)); // Check if the list contains the element 2 or not if yes true else false (we have to write in print to see the output)

  // print(numbers.length); // Get the length of the list ie. 5

  // another way to get the length

  // int length = numbers.length; // Get the length of the list ie. 5
  // print(length);

  // print(numbers.isEmpty); // Check if the list is empty or not if yes true else false (we have to write in print to see the output)

  // print(numbers.isNotEmpty); // Check if the list is not empty or not if yes true else false (we have to write in print to see the output)

  // print(numbers.reversed); // Reverse the list ie. (5,4,3,2,1)

  // print(numbers.first); // Get the first element of the list ie. 1

  // print(numbers.last); // Get the last element of the list ie. 5

  // print(numbers.indexOf(3)); // Get the index of the element 3 ie. 2

  // numbers.insert(2,8); // Insert the element 8 at the index 2 
  // print(numbers);

  numbers.insertAll(1,[6,7,8]); // Insert multiple elements [6,7,8] starting at index 1
  print(numbers);

}