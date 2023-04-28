import 'dart:io';

void main() {
  List<Map<String, String>> users = [];

  while (true) {
    print("Welcome to the Main Menu");
    print("1. User System");
    print("2. Food Menu System");
    print("3. Exit");

    String choice = stdin.readLineSync()!;

    switch (choice) {
      case '1':
        userSystem(users);
        break;
      case '2':
        foodMenuSystem();
        break;
      case '3':
        exit(0);
        break;
      default:
        print("Invalid choice");
    }
  }
}

void userSystem(List<Map<String, String>> users) {
  while (true) {
    print("Welcome to User System");
    print("1. Login");
    print("2. Register");
    print("3. Back");

    String choice = stdin.readLineSync()!;

    switch (choice) {
      case '1':
        login(users);
        break;
      case '2':
        register(users);
        break;
      case '3':
        return;
      default:
        print("Invalid choice");
    }
  }
}

void register(List<Map<String, String>> users) {
  print("Enter your name:");
  String name = stdin.readLineSync()!;
  print("Enter your email:");
  String email = stdin.readLineSync()!;
  bool emailExists = users.any((user) => user['email'] == email);

  if (emailExists) {
    print("Email already exists");
    return;
  }

  print("Enter your password:");
  String password = stdin.readLineSync()!;

  Map<String, String> newUser = {
    'name': name,
    'email': email,
    'password': password
  };
  users.add(newUser);
  print("Registration successful");
}

void login(List<Map<String, String>> users) {
  print("Enter your email:");
  String email = stdin.readLineSync()!;
  print("Enter your password:");
  String password = stdin.readLineSync()!;

  Map<String, String?>? user;
  try {
    user = users.firstWhere(
      (user) => user['email'] == email && user['password'] == password,
    );
  } catch (e) {
    user = null;
  }

  if (user != null) {
    print("Welcome, ${user['name']}");
  } else {
    print("Invalid email or password");
  }
}

void foodMenuSystem() {
  var pizzaMaxMenu = [
    {'name': 'margrita pizza', 'price': 60},
    {'name': 'chicken pizza', 'price': 80},
    {'name': 'meat pizza', 'price': 85},
  ];

  var ahlElshamMenu = [
    {'name': 'chicken shwerma', 'price': 40},
    {'name': 'meat shwerma', 'price': 45},
    {'name': 'mix shwerma', 'price': 50},
  ];

  var restaurants = [
    {'name': 'PizzaMax', 'menu': pizzaMaxMenu},
    {'name': 'Ahl elsham', 'menu': ahlElshamMenu},
  ];

  print("Select a restaurant:");
  for (var i = 0; i < restaurants.length; i++) {
    print('${i + 1}. ${restaurants[i]['name']}');
  }

  var restaurantIndex = -1;
  while (restaurantIndex < 0 || restaurantIndex >= restaurants.length) {
    var input = stdin.readLineSync();
    restaurantIndex = int.tryParse(input ?? '') ?? -1;
    restaurantIndex -= 1;
  }

  var selectedRestaurant = restaurants[restaurantIndex];
  var menu = selectedRestaurant['menu'] as List<Map<String, dynamic>>;
  print("\nMenu:");
  for (var i = 0; i < menu.length; i++) {
    var item = menu[i];
    print("${i + 1}. ${item['name']}, ${item['price']}");
  }

  print("\nEnter the numbers of the items you want (comma-separated):");
  var input = stdin.readLineSync();
  var selectedItems = input?.split(',') ?? [];

  var totalPrice = 0;
  for (var i = 0; i < selectedItems.length; i++) {
    var itemIndex = int.tryParse(selectedItems[i].trim()) ?? -1;
    if (itemIndex >= 1 && itemIndex <= menu.length) {
      var item = menu[itemIndex - 1];
      totalPrice += item['price'] as int;
    }
  }

  print("\nOrder summary:");
  print("Restaurant: ${selectedRestaurant['name']}");
  print("Items: $selectedItems");
  print("Total price: $totalPrice");
}
