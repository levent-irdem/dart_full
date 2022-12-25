import 'functions.dart';

void main(List<String> args) {
  int sum(int a, int b) {
    return a + b;
  }

  int sum1(int x, int y) => x + y;

  void printSum(int x, int y) => print(x + y);

  print(sum(1, 2));
  print(sum1(1, 3));
  printSum(1, 4);
  welcome(sayHi, "Levent");
}

// Anonymous function

final sayHi = (name) => "Hi $name";

// functions as an argument

void welcome(String Function(String) greet, String name) {
  print(greet(name));
  print("Welcome to this course");
}
