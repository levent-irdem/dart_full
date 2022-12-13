void main(List<String> args) {
/*
String : variable typle
name : variable name 
= : assignment 
"Levent" : String literal 
; : terminator
Değişkenlerimize isim verirken camelCase kuralına uyarız.
Değişkenlerimizin başında rakam kullanamayız.
*/
  String name = "Levent";
  String lastName = "İrdem";
  int age = 26;
  double height = 1.73;
  bool likesCoding = true;
  print(lastName);
  print(height);
  print(name);
  print(likesCoding);
  print(age);

  // String concatenation: + operatörü ile basitçe iki stringi birleştirme.

  String birlestir = "Merhaba benim adım" + name;
  print(birlestir);

  // String interpolation : String içine değişkenimizi yerleştirme.

  String interpolation =
      "Merhaba ben $name $lastName.$age yaşındayım ve boyum $height.";
  print(interpolation);

  // interpolate ettiğimiz değişkene bir işlem de uygulayabiliriz
  // Bunun için {} kullanırız.

  print("1 sene sonra ${age + 1} yaşında olacağım");

  // String içinde özel karakterler kullanmak için \ işaretini kullanırız.

  print("Ankara\'ya gideceğim");
  print("10\$ param var");

  // ek olarak raw kavramını da bilirsek iyi olur. stringin başına r koyarak bu işi hallederiz.
  print(r"10$ param var");

  // uzun stringler için string sonuna \n koyup satır atlayabilir
  // veya """ üç tırnak arasına stringi yazabiliriz """

  print("""
  Merhaba
  Bu dosya bize stringler hakkında bilgi veriyor.
  Kolay gelsin.
      """);

  // bazı temel string operatörleri

  String kelime = "Merhaba";
  //toLowerCase stringimizi kucuk harflere çevirir.
  kelime = kelime.toLowerCase();
  print(kelime);
  //toUpperCase stringimizi buyuk harflere çevirir.
  kelime = kelime.toUpperCase();
  // lenght methodu string uzunluğunu verir.
  print(kelime.length);

  // contains methodu bize stringin bir değeri içerip içermediğini söyler.
  // geriye bool değeri döndürür.
  String dart = "Dart çok güzel bir dildir";
  bool iceriyorMu = dart.contains("Dart");
  print(iceriyorMu);

  //replaceAll methodu ile "Dart" kelimesini "Kotlin" ile değiştirelim ve kotlin değişkenine atayalım.
  String kotlin = dart.replaceAll("Dart", "Kotlin");
  print(kotlin);

  // toString methodu
  // sayi değişkeni 12 sayisina referans etmesine rağmen
  // bir alt satırda toString methodu ile sayi değişkenini bir string değere atayabiliriz.

  int sayi = 12;
  String sayiToString = sayi.toString();
  print(sayiToString);

  // Bu şekilde çok daha fazla methodu dökümanlarda bulabiliriz.
  // İhtiyaç anında dökümanları inceleyip problemimizi çözmeye çalışmak bizi geliştircektir.
}
