/*Create a Vehicle class with brand, model, and year instance variables,
  Create a Car subclass with a numDoors instance variable,
  Create a Truck subclass with a payloadCapacity instance variable,
  Instantiate an object of each subclass and display their properties. */
void main() {
  Car myCar = new Car();
  Truck myTruck = new Truck();
  myCar.printCarInfo();
  myTruck.printTruckInfo();
}

abstract class Vehicle {
  String? brand;
  String? model;
  String? year;
}

class Car extends Vehicle {
  String? brand = "KIA";
  String? model = "Picanto";
  String? year = "2015";
  String? numDoors = "4";
  printCarInfo() {
    print(
        "Car Brand: $brand, Car Model: $model, Car Year: $year, Car Doors number: $numDoors");
  }
}

class Truck extends Vehicle {
  String? brand = "Volvo";
  String? model = "FM16";
  String? year = "2020";
  String? payloadCapacity = "10 TON";
  printTruckInfo() {
    print("Truck Brand: $brand, Truck Model: $model, Truck Year: $year, Truck Payload capacity: $payloadCapacity");
  }
}
