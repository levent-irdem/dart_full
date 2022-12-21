void main(List<String> args) {
// CONTROL FLOW

// Control flow'ları kodlarımızın hangi durumlarda nasıl çalışacağına karar vermek içinn kullanırız.

/* Bunlar;
- ıf/else statements

- while and for loops

- switch statements

- enumerations

 */

// IF ELSE

// Örnek bir bilet uygulaması

  const age = 16;
  if (age < 18) {
    print("Öğrenci bileti alabilirsiniz");
  } else if (age >= 60) {
    print("Ücretsiz geçiş");
  } else {
    print("Tam bilet almalısınız");
  }

  // WHILE LOOPS

  // 2 rakamını 0 dan başlayarak 10'a kadar olan sayılarla çarpalım
  var sayi = 0;
  var deger = 2;
  while (sayi <= 10) {
    // burada sayi değerimiz 10dan kucuk veya eşit oldugu surece döngü devam eder.

    print(sayi * deger);
    sayi++; // her seferinde sayi değerini 1 arttırıyoruz ki döngü sonsuz olmasın.
  }
  print("bitti");

  // FOR LOOPS

  // aynı örneği değiştirerek for döngüsü ile yapalım.

  var ilkDeger;
  var carpilacakDeger = 3;
  for (ilkDeger = 1; ilkDeger <= 10; ilkDeger++) {
    print(ilkDeger * carpilacakDeger);
  }

  // değerlerin anlaşılır olması için yukarda ilk degerlerini atadık
  // normalde buna ihtiyacımız yok
  // aşağıda görüldüğü gibi de yazılabilir.

  for (var i = 0; i <= 10; i++) {
    print(i * 3);
  }

  // for dongusunun farklı bır varyasyonu da for in dongusudur

  var liste = [1, 2, 3, 4, 5];

  for (var i in liste) {
    // burada i değerimiz sıra sıra liste içinde geziyor ve listedeki elemanları ekrana yazdırıyor.

    print(i);
  }

  /*
  öyle bir pratik yapalım ;
  döngümüz 1 den 30a kadar her seferınde 1 artarak devam etsin
  3 ün katları için fizz
  5 in katları için buzz
  hem 3 hem 5 in katları için fizz buzz yazdırsın
   */

  for (var i = 1; i <= 30; i++) {
    if (i % 3 == 0 && i % 5 == 0) {
      print("fizz buzz");
    } else if (i % 3 == 0) {
      print("fizz");
    } else if (i % 5 == 0) {
      print("buzz");
    } else {
      print(i);
    }
  }

  // SWITCH - CASE

  var sonuc = 1;
  switch (sonuc) {
    case 1:
      print("Altın madalya");
      break;
    case 2:
      print("Gümüş madalya");
      break;
    case 3:
      print("Bronz madalya");
      break;
    default:
      print("Madalya kazanamadınız");
  }

  // bu switch case bize "Altın madalya" çıktısını verecek

  // SWITCH CASE ILE ENUM KULLANIMI
  // ENUM NEDIR DAHA SONRA DETAYLICA BAKACAGIZ

  const day = Days.saturday;

  switch (day) {
    case Days.saturday:
      print("I love weekends");
      break;
    case Days.monday:
      print("I hate mondays");
      break;
    case Days.friday:
      print("Tomorrow is ${Days.saturday}");
      break;
    default:
  }
}

enum Days {
  monday,
  tuesday,
  wednesday,
  thursday,
  friday,
  saturday,
  sunday,
}
