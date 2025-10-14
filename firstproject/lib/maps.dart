void main() {
  Map<String,String> myinfo = {
    "name":"jay", // both key and value in string as we defined in map
    "surname":"bhatt"
  };
  myinfo["school"] = "BABS Highschool"; // adding a new key-value pair to the map
  print(myinfo);
}

/* void main() {
  Map<String,int> myinfo = {
    "age":21, // key is string and value is integer as we defined in map
    "rollno":42
  };
  print(myinfo);
} */

/* void main() {
  Map<String,dynamic> myinfo = {
    "name":"jay", // key is string and value is dynamic as we defined in map
    "age":21,
    "rollno":42,
    "surname":"bhatt"
  };
  print(myinfo);
} */

// dynamic can take any type of value like string, int, double, bool, list, set, map etc.

/* some common commands 
print(myinfo.keys); // prints all the keys only in the map, output: (name, surname,school)
print(myinfo.values); // prints all the values only in the map, output: (jay, bhatt, BABS Highschool)
print(myinfo.isEmpty); 
print(myinfo.isNotEmpty);
print(myinfo.remove("school")); // removes the key-value pair with key "school"

*/