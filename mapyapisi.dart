void main() {
  /* Map listeleri anahtar deger mantigiyla calisir. Liste elemanlarina index atanir.
  Map veri tipinin genel özellikleri:

 Map veri tipindeki her anahtar (key) benzersiz olmalıdır.
 Değer (value) tekrarlanabilir.
 Map genel olarak karma (hash) veya sözlük (dictionary) olarak adlandırılabilir.
 Map veri tipinin boyutu sabit değildir; eleman sayısına göre değişiklik gösterebilir.
  */
  Map isimler = {1: "Esra", 2: "Enes", 3: "Murat", 4: "Fatma", 5: "Merve"};
  print(isimler);

  //Liste icinde ki indexlerin karsilarina daha buyuk hacimli degerler yazila bilir.

  Map kullaniciBilgileri = {
    1: {"Isim": "Sedanur", "Soyisim": "Genc", "Yas": 37},
    2: {"Isim": "Selcuk", "Soyisim": "Genc", "Yas": 44},
    3: {"Isim": "Huseyin", "Soyisim": "Sahin", "Yas": 25}
  };

  print(kullaniciBilgileri);

  // Girilen indexi cagirir.
  print(isimler[2]);

  //Girilen indexdeki istenen keyi cagirir.
  print(kullaniciBilgileri[3]["Isim"]);

  // Mapin ici bosmu diye sorar.
  print(isimler.isEmpty);

  // Mapin ici dolumu diye sorar.
  print(isimler.isNotEmpty);

  //Mapin icindeki anahtarlari sayar.
  print(isimler.keys);

  //Mapin uzunlugunu verir.
  print(isimler.length);

  //Mapin icerisindeki value degerlerini getirir.
  print(isimler.values);

  //Iki mapi uc uca baglar.
  Map yeniisimler = {
    4: {"Isim": "Hakan", "Soyisim": "Sinap", "Yas": 38},
    5: {"Isim": "Halit", "Soyisim": "Sendil", "Yas": 29}
  };

  kullaniciBilgileri.addAll(yeniisimler);
  print(kullaniciBilgileri);

  //Girilan vaule degeri mapin icerisinde var mi sorusuna yanit verir.
  print(isimler.containsValue("Sedanur"));
  print(isimler.containsValue("Esra"));

  //Girilan key degeri mapin icerisinde var mi sorusuna yanit verir.
  print(kullaniciBilgileri.containsKey(6));
  print(kullaniciBilgileri.containsKey(1));

  // Anahtar ve degerleri yanlarina girilen degerleri ekleyerek alt alta siralar.
  isimler.forEach((key, value) {
    print(key.toString() + "Key :" + value.toString() + "Deger");
  });

  //Girilen key degerini siler.
  isimler.remove(4);
  print(isimler);

  //Girilen key deki value degerini degistirir.
  kullaniciBilgileri.update(
      2, (value) => {"Isim": "Ali", "Soyisim": "Cetin", "Yas": 40});
  print(kullaniciBilgileri);
}
