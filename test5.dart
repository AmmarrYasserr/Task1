void main() {
  //Make a program that shows the difference between any - every
  List<String> names = [
    "Ammar",
    "Yasser",
    "Youssef",
    "Ali",
    "ahmed",
    "mohammed"
  ];
  //Checks whether any element of this iterable satisfies test (element.length < 5).
  print(names.any((element) => element.length < 5));

  //Checks whether every element of this iterable satisfies test (element.length < 5).
  print(names.every((element) => element.length < 5));
}
