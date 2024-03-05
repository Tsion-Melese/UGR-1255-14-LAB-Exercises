void main() {
  int n = 10;
  int number1 = 0;
  int number2 = 1;

  print("$n ");

  for (int i = 0; i < n; i++) {
    print(number1);
    int next = number1 + number2;
    number1 = number2;
    number2 = next;
  }
}
