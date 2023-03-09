//Show how to use getters and setters with a class
void main() {
  Setandget name = new Setandget();
  name.changename = "Ammar";
  print(name.newname);
}

class Setandget {
  String name = "Ahmed";

  void set changename(String newname) {
    this.name = newname;
  }

  String get newname {
    return name;
  }
}
