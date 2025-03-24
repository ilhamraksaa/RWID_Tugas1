import 'dart:io';
import 'dart:math';

void main() {
  final random = Random();
  int target = random.nextInt(100) + 1;
  int attempts = 0;

  print('Tebak angka antara 1 sampai 100!');

  while (true) {
    print('Masukkan tebakan Anda: ');
    String? input = stdin.readLineSync();

    if (input == null) {
      print('Input tidak boleh kosong.');
      continue;
    }

    int? guess = int.tryParse(input);

    if (guess == null || guess < 1 || guess > 100) {
      print('Masukkan angka yang valid antara 1 sampai 100!');
      continue;
    }

    attempts++;

    if (guess < target) {
      print('Terlalu kecil, coba lagi!');
    } else if (guess > target) {
      print('Terlalu besar, coba lagi!');
    } else {
      print('Selamat! Anda menebak angka $target dengan $attempts percobaan.');
      break;
    }
  }
}
