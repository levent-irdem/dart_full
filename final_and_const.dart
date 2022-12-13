void main(List<String> args) {
  /* Bu dosya final ve const arasındaki farkı açıklamak için oluşturuldu.
  Final : Final değerler programımız çalışırken değerini alır ve o şekilde
  devam eder. Yani runtime'da .
  Const : const degerler compile time'da değerini alır. Yani program çalışmadan
  önce derleme aşamasında. */

  final time = DateTime.now();
  // program calısırken o anki zaman degerini alacak.
  print(time);

  const pi = 3.14;
  print(pi);

  // pi değeri 3.14 olarak bilinen bir değerdir. bu gibi kesinlikle bilinen değerleri
  // const olarak tutmak programımızın performansı açısından olumlu olur.
}
