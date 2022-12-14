void main(List<String> args) {
  /* Programlama dillerinde static ve dynamic adında iki kavram bulunur
  Static diller type inferring alanında sıkıdır.Bu şu anlama geliyor:
  static dillerde veri tipleri compile time'da kontrol edilir, dynamic 
  dillerde ise tam aksine run time check yapılır. Dart,swift, kotlin gibi 
  diller statictir. Yani veri tipleri compile time'da kontrol edilir.
  Bu durum bize avantaj saglar.Runtime'da alınan veri tipi bazlı errorların onune
  geçer.
   */

  var name = "Levent";
  var age = 26;
  var height = 1.72;
  // buradaki değişkenleri String,int,double olarak tanımlasaka bile
  // var keywordü onun typını anlar ve ona gore davranır.

  /*
  var lastName = "Irdem";
  var toUpperCase = lastName.toUpperCase();
  print(toUpperCase);
  */
  /*Yukarıdaki ornekte var kullanımında neden dıkkatlı olmak zorunda 
  oldugumuzu gorecegız. lastName değerini toUpperCase methoduna taabi 
  tuttugumuzda bir problem yok . Fakat programın herhangı bir bolumunde 
  lastName "1234"  olarak degıstırılebilirdi. "1234" hala bir string fakat
  sayıları içeriyor.Bilindiği üzere toUpperCase methodu sadece karakterler 
  üzerinde calısır ve bu bızım error almamıza sebep olacaktır . Bu gıbı olayların
  onune gecmek ıcın final keywordunu kullanmalıyız.*/

  //DOGRU KULLANIM//

  final lastName = "Irdem";
  final toUpperCase = lastName.toUpperCase();
  print(toUpperCase);

  // DYNAMIC KEYWORD //

  dynamic year = 2022;
  year = "ikibin yirmiiki";

  // goruldugu uzere dynamıc keywordu once bir int'a sonrasında bir string'e referans edıyor.
}
