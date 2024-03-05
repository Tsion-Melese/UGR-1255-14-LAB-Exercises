Future<String> fetchData() async {
  await Future.delayed(Duration(seconds: 2)); // Simulating an asynchronous operation
  return 'Data fetched successfully!';
}

void main() async {
  print('Waiting for data...');
  String result = await fetchData();
  print(result);
}
