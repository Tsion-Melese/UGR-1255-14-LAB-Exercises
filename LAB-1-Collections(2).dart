void printMap(Map<dynamic, dynamic> map) {
  map.forEach((key, value) {
    print('Key: $key, Value: $value');
  });
}

void main() {
  Map<String, int> map = {
    'web': 7,
    'mobile': 6,
    'SE': 3,
  };

  printMap(map);
}
