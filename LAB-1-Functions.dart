double calculateAverage(List numbers) {
  if (numbers.isEmpty) {
    return 0.0;
  }

  double sum = 0;
  for (int i = 0; i < numbers.length; i++) {
    sum += numbers[i];
  }

  double average = sum / numbers.length;
  return average;
}

void main() {
  var numbers = [0.5, 1.0, 3.5, 1.0];

  double average = calculateAverage(numbers);
  print('The average is: $average');
}
