class Car {
  String brand;
  String model;
  int year;

  Car(this.brand, this.model, this.year);

  void carProperties() {
    print('Brand: $brand');
    print('Model: $model');
    print('Year: $year');
  }

  void makeSound() {
    print('Vroom Vroom');
  }
}

class ElectricCar extends Car {
  int batteryLife;

  ElectricCar(String brand, String model, int year, this.batteryLife)
      : super(brand, model, year);

  void electricCarProperties() {
    carProperties();
    print('Battery Life: $batteryLife');
  }
}

void main() {
  ElectricCar labElectricCar = ElectricCar('toyota', 'Model S', 2023, 1200);

  labElectricCar.makeSound();
  labElectricCar.electricCarProperties();
}
