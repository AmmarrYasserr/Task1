import 'dart:io';

void main() {
  //Create a list of names, then use the map method to create another list that contains the length of each name.
  List<String> names = [
    "Ammar",
    "Yasser",
    "Youssef",
    "Ali",
    "ahmed",
    "mohammed"
  ];
  print("Names: $names");
  List namelength = names.map((e) => e.length).toList();
  print("Names Length: $namelength");
}
