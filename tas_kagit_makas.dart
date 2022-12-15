import 'dart:io';
import 'dart:math';

enum Move { tas, kagit, makas }

void main(List<String> args) {
  final rng = Random();
  while (true) {
    stdout.write("""Merhaba , oyunu başlatmak için bir hamle seç.
     Taş için t
     Kağıt için k
     Makas için m ' ye bas.
     Oyundan çıkmak için q'ya bas.
     """);
    final input = stdin.readLineSync();
    if (input == "t" || input == "k" || input == "m") {
      var playerMove;
      if (input == "t") {
        playerMove = Move.tas;
      } else if (input == "m") {
        playerMove = Move.makas;
      } else {
        playerMove = Move.kagit;
      }
      final random = rng.nextInt(3);
      final aImove = Move.values[random];
      print("Seçimin: $playerMove");
      print("Bilgisayarın seçimi : $aImove");
      if (playerMove == aImove) {
        print("Berabere");
      } else if (playerMove == Move.tas && aImove == Move.makas ||
          playerMove == Move.kagit && aImove == Move.tas ||
          playerMove == Move.makas && aImove == Move.kagit) {
        print("Sen kazandın");
      } else {
        print("Kaybettin");
      }
    } else if (input == "q") {
      break;
    } else {
      print("Geçersiz değer ");
    }
  }
}
