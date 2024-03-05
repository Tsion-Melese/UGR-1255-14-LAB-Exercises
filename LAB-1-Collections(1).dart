int findHighestNumber(List<int> numbers) {
  if (numbers.isEmpty) {
    throw ArgumentError('The list is empty.');
  }

  int highestNumber = numbers[0];
  for (int number in numbers) {
    if (number > highestNumber) {
      highestNumber = number;
    }
  }

  return highestNumber;
}

void main() {
  List<int> numbers = [1, 3, 50, 8, 10];

  int highestNumber = findHighestNumber(numbers);
  print('The highest number is: $highestNumber');
}
