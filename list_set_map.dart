void main(List<String> args) {
  var cities = ["London", "Paris", "Moscow"];
  print(cities[0]);
  cities[1] = "İstanbul";
  cities.add("Paris");
  for (var city in cities) {
    print(city);
  }
  for (var i = 0; i < cities.length; i++) {
    print(cities[i]);
  }

  var numbers = [1, 3, 5, 7, 9];
  final ilkdeger = 0;
  // fold methodu ile liste içindeki sayıları toplama.
  final sonuc = (numbers.fold<int>(
      ilkdeger, (oncekisayi, element) => oncekisayi + element));
  print(sonuc);

  // bir başka toplama yöntemi

  var yeniSayilar = [2, 4, 5, 6, 7, 8, 99];
  var toplam = 0;
  for (var value in yeniSayilar) {
    toplam = toplam + value;
  }
  print(toplam);

  // LIST METHODS

  var newList = <int>[1, 2, 3, 4, 5, 5, 67, 7, 8, 9, 0];
  print(newList.length); // listenin uzunlugunu verir.
  print(newList.isEmpty); // liste boş mu diye kontrol eder. bool döndürür.
  print(newList
      .isNotEmpty); // liste boş değil mi diye kontrol eder.bool döndürür.
  print(newList.first); // listenin ilk elamanını yazdırır.
  print(newList.last); // listenin son elamanını yazdırır.
  newList.add(100); // listeye elaman ekler.
  newList.sort(((a, b) => a.compareTo(b))); // listeyi kucukten buyuge sıralar.
  print(newList);
  newList.insert(2, 99); // 2.indexe verilen değeri yerleştirir.
  newList.removeAt(3); // seçili indexteki veriyi siler.
  newList
      .contains(9); // girilen değer listede var mı diye bakar. bool döndürür.
  newList.indexOf(1); // girilen değerin kaçıncı indexte olduguna bakar.

  // TYPE ANNOTATIONS

  /* Listelerimize type annotation ile bir koruma sağlayabiliriz.
   */
  List<String> sehirler = ["İzmir", "Ankara", "İstanbul"];
  print(sehirler);

  // Bu liste içine değer olarak sadece string kabul eder.

  // final,const Listeler

  final List isimler = ["Ahmet", "Mehmet", "Ayşe"];
  // isimler = ["Levent"]; final list 1 kere set edilir. Bu kod hata verir
  isimler[1] = "Levent"; // ama içindeki değeri değiştirebiliriz.
  // aynı liste const olsaydı ne içeriğini ne kendisini değiştirebilirdik.
  const List sayilar = [1, 2, 3, 4];
  // sayilar[1] = 2; // bu kod compile time'da hata vermez ama run time'da verir.

  // SET
  /*
  Setlerin listelerden en büyük farkı setlerin içindeki değerlerin her 
  birinden 1 tane vardır.
   */

  var ulkeler = {"türkiye", "italya", "kore"};
  var ulkeler_2 = {"çin", "türkiye", "hırvatistan"};

  print(ulkeler.elementAt(1)); // Setin 1. indexini verir.
  ulkeler.add("Fas"); // değeri sete ekler.
  ulkeler.remove("Fas"); // değeri siler.
  print(ulkeler.intersection(ulkeler_2)); // iki setteki ortak elemanları yazar.
  print(ulkeler.difference(ulkeler_2)); // iki setteki farklı elemanları yazar.

  // MAP

  Map<String, dynamic> person = {
    'name': 'Levent',
    'age': 26,
    'height': 1.73,
  };
  var name = person['name'];
  person['likesPiza'] = true;
  print(person);

  for (var key in person.keys) {
    print(key);
  }
  for (var value in person.values) {
    print(value);
  }
  for (var entry in person.entries) {
    print("${entry.key} : ${entry.value}");
  }

  print(person['name']);
}
