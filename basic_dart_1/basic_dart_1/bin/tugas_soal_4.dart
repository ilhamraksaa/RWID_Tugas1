import 'dart:io';

void main() {
  double saldo = 0;

  while (true) {
    print('\n=== E-Wallet CLI ===');
    print('1. Cek Saldo');
    print('2. Top Up');
    print('3. Belanja');
    print('4. Keluar');
    stdout.write('Pilih menu: ');

    String? input = stdin.readLineSync();

    switch (input) {
      case '1':
        print('Saldo Anda: Rp${saldo.toStringAsFixed(2)}');
        break;
      case '2':
        stdout.write('Masukkan jumlah top up: ');
        String? topUpInput = stdin.readLineSync();
        double? topUpAmount = double.tryParse(topUpInput ?? '');
        if (topUpAmount != null && topUpAmount > 0) {
          saldo += topUpAmount;
          print(
              'Top up berhasil! Saldo Anda sekarang: Rp${saldo.toStringAsFixed(2)}');
        } else {
          print('Jumlah top up tidak valid!');
        }
        break;
      case '3':
        stdout.write('Masukkan jumlah belanja: ');
        String? belanjaInput = stdin.readLineSync();
        double? belanjaAmount = double.tryParse(belanjaInput ?? '');
        if (belanjaAmount != null && belanjaAmount > 0) {
          if (belanjaAmount <= saldo) {
            saldo -= belanjaAmount;
            print(
                'Belanja berhasil! Sisa saldo: Rp${saldo.toStringAsFixed(2)}');
          } else {
            print('Saldo tidak cukup!');
          }
        } else {
          print('Jumlah belanja tidak valid!');
        }
        break;
      case '4':
        print('Terima kasih telah menggunakan E-Wallet CLI!');
        return;
      default:
        print('Pilihan tidak valid, coba lagi.');
    }
  }
}
