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
}

void main() {
  Car labCar = Car('Marchedis', 'G-wagen', 2019);
  labCar.carProperties();
}
