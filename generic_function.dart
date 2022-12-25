void main(List<String> args) {
  final list = [1, 2, 3, 4, 5, 6];
  final listTwo = [1.0, 2.0, 3.0, 4.0];

  final doubles = transform<int, int>(list, (x) => x * 2);
  print(doubles);
  final squares = transform<int, int>(list, (x) => (x * x));
  print(squares);
  final rounded = transform<double, int>(listTwo, (x) => (x * x).round());
  print(rounded);
}

List<int> doubleItems(List<int> listItems) {
  final result = <int>[];
  for (var x in listItems) {
    result.add(x * 2);
  }
  return result;
}

List<R> transform<T, R>(List<T> listName, R Function(T listElemanlari) f) {
  final result = <R>[];
  for (var x in listName) {
    result.add(f(x));
  }
  return result;
}
