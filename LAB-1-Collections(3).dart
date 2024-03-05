List<T> depulcateremover<T>(List<T> list) {
  List<T> result = [];

  for (T element in list) {
    if (!result.contains(element)) {
      result.add(element);
    }
  }

  return result;
}

void main() {
  List<String> course = ['web', 'mobile', 'ai', 'web', 'ai'];

  List<String> courses = depulcateremover(course);
  print(' $courses');
}
