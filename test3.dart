void main() {
  //Use the list in the last question and print whether it contains even numbers or not using list methods.
  var mylist = [3, 4, 1, 2, 5, 6];
  List evenlist = mylist.where((element) => element % 2 == 0).toList();
  if (evenlist.isNotEmpty) {
    print("The List contains even numbers");
    print(evenlist);
  } else {
    print("The List doesn't contain even numbers");
  }
}
