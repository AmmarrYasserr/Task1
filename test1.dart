import 'dart:io';

void main() {
  //Add any 7 names to a list. Use where to find names that start with alphabet a.
  List<String> names = [
    "ammar",
    "yasser",
    "youssef",
    "ali",
    "ahmed",
    "hossam",
    "belal"
  ];
  print("Original List : $names");
  List<String> namesstartwitha =
      names.where((element) => element.startsWith("a")).toList();
  print("Names start with litter 'a' : $namesstartwitha");
}
