class Car {
  String brand;
  String model;
  int year;

  Car(this.brand, this.model, this.year);

  void carProperties() {
    print('$brand');
    print('$model');
    print('$year');
  }

  void makeSound() {
    print('Vroom Vroom');
  }
}

void main() {
  Car labCar = Car('Marchedis', 'Corolla', 2019);
  labCar.carProperties();
  labCar.makeSound();
}
