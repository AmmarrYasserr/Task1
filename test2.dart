/*Create a BankAccount class with balance and accountNumber instance variables,
  Define a method deposit() that takes an amount and adds it to the balance,
  Define a method withdraw() that takes an amount and subtracts it from the balance,
  Instantiate an object of the class and call the deposit() and withdraw() methods. */
void main() {
  BankAccount user1 = new BankAccount();
  user1.balance = 4567.76;
  user1.deposit(1326.97);
  user1.withdraw(783.63);
  print("Total Balance: ${user1.balance}");
}

class BankAccount {
  double balance = 0;
  double accountNumber = 0;

  deposit(double add) {
    this.balance += add;
  }

  withdraw(double subtract) {
    this.balance -= subtract;
  }
}
