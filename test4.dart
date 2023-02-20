void main() {
/*From the list
  a = [11, 22, 33, 44, 55, 66, 77, 88, 99]
  use firstWhere and lastWhere to print the elements divisible by 3 */

  List<int> a = [11, 22, 33, 44, 55, 66, 77, 88, 99];
  print("First element in List divisible by 3: ${a.firstWhere((element) => element % 3 == 0)}");
  print("Last element in List divisible by 3: ${a.lastWhere((element) => element % 3 == 0)}");
}
