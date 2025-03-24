import 'dart:io';

void main(List<String> arguments) {
  print('');
  print('===== GANJIL GENAP =====');
  print('Masukkan Angka: ');
  String? input = stdin.readLineSync() ?? "";

  if (input != null) {
    int? number = int.tryParse(input);

    if (number != null) {
      if (number % 2 == 0) {
        print('Angka $number adalah bilangan Genap.');
      } else {
        print('Angka $number adalah bilangan Ganjil.');
      }
    } else {
      print('Tolong Masukkan Angka.');
    }
  } else {
    print('Anda Belum Input Angka.');
  }
}
