void main(List<String> args) {
  const addBlue = false;
  const addRed = true;
  final renkler = [
    "grey",
    "brown",
  ];
  final yeniRenkler = ["yellow", "green"];

  // ignore: dead_code
  if (addBlue) {
    renkler.add("blue");
  }
  if (addRed) {
    renkler.add("red");
  }
  print(renkler);

  final renkler1 = [
    "grey",
    "brown",
    // ignore: dead_code
    if (addBlue) "blue",
    if (addRed) "red",
    ...yeniRenkler,
  ];
  print(renkler1);
}
