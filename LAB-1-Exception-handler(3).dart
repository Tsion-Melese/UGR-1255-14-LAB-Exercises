void main() {
  try {
    print('Executing try block');
    throw Exception('Exception occurred');
  } catch (e) {
    print('Exception: $e');
  } finally {
    print('Executing  block');
  }
}
