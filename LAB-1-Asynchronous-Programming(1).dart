Future<String> fetchData() async {
  await Future.delayed(Duration(seconds: 2));
  return 'Data fetched successfully!';
}

void main() {
  print('Waiting for data');
  fetchData().then((result) {
    print(result);
  });
}
