import 'dart:io';

void main() {
  /*From the list
  a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
  Use list methods to create another list containing only values less than 13*/

  List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  List<int> lessthan13 = a.where((element) => element < 13).toList();
  print("Values less than 13 : $lessthan13");
}
