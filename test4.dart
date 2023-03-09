//What does the static keywork do? Explain with example.
void main() {
  //static is used for a constant variable or a method that is same for every instance of a class
  User name1 = new User();
  User name2 = new User();
  User.lastname = "Yasser";
  name1.firstname = "Ammar";
  name2.firstname = "Mohammed";
  print(name1.firstname + " " + name1.getname);
  print(name2.firstname + " " + name2.getname);
}

class User {
  String firstname = "";
  static String lastname = "";

  get getname {
    return lastname;
  }
}