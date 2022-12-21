void main(List<String> args) {
  // basic dart operatorleri
  print(6 + 2);
  print(6 - 2);
  print(6 * 2);
  print(6 ~/ 2);
  print(5 % 2);
  // % işareti bizim için o sayının modunu alır.

  // bölme işlemini ~/ şeklinde yaptık çünkü eğer sayı 6 ya bölünmüyor olsaydı hata alırdık.
  // ~ bu işaret bizim için sonucu yuvarlar.

  var x = 2;
  x = x + 2; // x'e 2 ekler
  x +=
      2; // bu da x e 2 ekler; çarpma çıkarma için de geçerlidir. fakat bölme yapmak istersek değişken tipi double olmalıdır.
  x++; // x'e 1 ekler.

  print(10 -
      2 * 4); // işlemler matematikte oldugu gibi işlem sırasına göre yapılır.
  // çıktı 2 olacaktır.Ayırmak istersek şu şekilde yazarız.
  print((10 - 2) * 4);
  // çıktı 32 olacaktır.

  // LOGICAL & RELATİONAL OPERATORS //
  print(10 == 2); // eşitlik
  print(10 != 2); // eşit değil
  print(10 > 2); // büyüktür
  print(10 >= 2); // büyük veya eşit
  print(10 < 2); // küçüktür
  print(10 <= 2); // küçük veya eşit

  // bu operatörler bize bir bool deger döner
  // print(5 < "Hello"); diyemeyiz eğer sadece stringin .lenght metodu ile kıyas yapabiliriz.

  print(5 < "hello".length);

  // aynı anda birden fazla kıyas yapabiliriz .
  // || veya demektir
  // && ve demektir

  print(5 < 2 || 5 < 7);
  print(5 < 2 && 5 < 7);

  print(!(5 < 2));
  // true döner. beş ikiden kucuk degıldır ama başında ! var . yani not operatorü.

  // basit bir email kontrolü yapalım

  String email = "abc@gmail.com";
  print(email.isNotEmpty && email.contains("@"));
  // burada emailin boş olup olmadıgı ve @ işareti içerip içermediğini kontrol ettik.

  // TERNANARY OPERATOR //

  /*
  variable = expression1 ? expression2 : expression3 
  expression1 true ise 2'ye geçer 
  expression1 false ise 3'e geçer
  */

  int age = 26;
  bool yetiskinMi = age > 18 ? true : false;
  print(yetiskinMi);

  // başka bir örnek

  print(age > 18 ? "Yetişkin" : "Çocuk");

  // Daha fazlası için dart dökümanlarına bakınız.. :)
}
