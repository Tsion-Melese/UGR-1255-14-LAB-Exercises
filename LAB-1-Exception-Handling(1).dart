void throwException() {
  throw Exception('Exception');
}

void main() {
  try {
    throwException();
  } catch (e) {
    print('Exception: $e');
  }
}
