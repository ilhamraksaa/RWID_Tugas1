import 'dart:io';

void main() {
  print('');
  print('===== REMOTE WORKER =====');
  print('Masukkan jumlah perulangan: ');
  String? input = stdin.readLineSync();

  if (input != null) {
    int? repeat = int.tryParse(input);

    if (repeat != null && repeat > 0) {
      for (int i = 1; i <= repeat; i++) {
        if (i % 3 == 0 && i % 5 == 0) {
          print('Remote Worker');
        } else if (i % 3 == 0) {
          print('Remote');
        } else if (i % 5 == 0) {
          print('Worker');
        } else {
          print(i);
        }
      }
    } else {
      print('Input bukan angka yang valid atau kurang dari 1.');
    }
  } else {
    print('Tidak ada input.');
  }
}
