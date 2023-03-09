//What's the difference between const and final? Explain and write code
import 'dart:io';

void main() {
  // const variable 'name' is completely immutable.
  // const should initialize variable with declaration.
  const String name = "AMMAR";
  print("Normal const '${name}'");
  print("-------------------------------------------------");
  Info info = new Info("Ahmed");
  print("const constructor '${info.text}'");
  print("-------------------------------------------------");
  //final cannot reassign or assign once created with final keyword and you have to initialize it once.
  //final can assign once in runtime.
  final int age = 20;
  print("final value: $age");
  final yournumber = int.parse(stdin.readLineSync()!);
  print("Number is $yournumber");
}

class Info {
//You can use const constructor too.
  final text;
  const Info(this.text);
}
