void throwException() {
  throw FormatException('Invalid format');
}

void main() {
  try {
    throwException();
  } catch (e) {
    if (e is FormatException) {
      print('FormatException : $e');
    } else {
      print('exception caught: $e');
    }
  }
}
