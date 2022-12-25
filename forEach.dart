void main(List<String> args) {
  const list = [1, 2, 3, 4];
// birinci yöntem
  for (var value in list) {
    print(value + 2);
  }

  print("-" * 26);
// ikinci yöntem
  const listTwo = [2, 3, 4, 5, 6];
  listTwo.forEach((value) => print(value * 4));

// map operetoru
// listedeki elemanlara işlem uygulayıp yeni bir itirable döner.

  var listTwoToSet = listTwo.map((element) => element * 2).toList();
  print(listTwoToSet);
}
