void main(List<String> args) {
  sayHi();
  kendiniTanit(isim: "Levent", yas: 26);
  print(arabaniSoyle("Mazda"));
  List<double> sayilar = [1, 2, 3, 4, 5, 6, 7, 8];
  print(sum(sayilar));
  print(describe(name: 'Levent', age: 26));
  foo(2);
}

void sayHi() {
  print("Hi");
  print("Welcome");
}

void kendiniTanit({required String isim, required int yas}) {
  print("Merhaba benim adım $isim ve ben $yas yaşındayım.");
}

String arabaniSoyle(String marka) {
  return "Merhaba benim arabam $marka.";
}

double sum(List<double> values) {
  return values.fold(0, (x, y) => x + y);
}

String describe({required String? name, required int? age}) {
  return 'Hello my name is $name and i am $age years old.';
}

// optional arguments

void foo(int a, [int b = 2]) {
  print("a : $a , b : $b");
}
