import 'akunUser.dart';
import 'historyTransaksi.dart';
import 'dart:io'; // biar bisa input output

class ATM {
  final akunUser userAccount = akunUser(); 
  final historyTransaksi transaksiHistory = historyTransaksi(); // Histori transaksi
  bool isRunning = true; // Status program
  final String username = 'dea'; // username buat login
  final String password = '123'; // password buat login

  // fungsi untuk mulai program
  void start() {
    if (_login()) {
      print('=== Selamat Datang di ATM Buatan Deazard ===');
      print('============================================');
      while (isRunning) {
        print('''
Pilih Menu:
1. Cek Saldo
2. Deposit Saldo
3. Tarik Saldo
4. Lihat Histori Transaksi
5. Ringkasan Transaksi
6. Keluar
''');
        stdout.write('Masukkan pilihan Anda: ');
        String? input = stdin.readLineSync();

        switch (input) {
          case '1':
            _checkSaldo();
            break;
          case '2':
            _deposit();
            break;
          case '3':
            _tarikSaldo();
            break;
          case '4':
            _viewTransaksiHistory();
            break;
          case '5':
            _ringkasanTransaksi();
            break;
          case '6':
            _exit();
            break;
          default:
            print('Pilihan tidak valid, silakan coba lagi.');
        }
      }
    }
  }

  // fitur login, punya 3x kesempatan
  bool _login() {
    print('=== Login ATM ===');
    int attempts = 0;

    while (attempts < 3) {
      stdout.write('Masukkan username: ');
      String? inputUsername = stdin.readLineSync();
      stdout.write('Masukkan password: ');
      String? inputPassword = stdin.readLineSync();

      if (inputUsername == username && inputPassword == password) {
        print('Login berhasil!\n');
        return true;
      } else {
        attempts++;
        print('Username atau password salah. Percobaan ${attempts}/3');
      }

      if (attempts == 3) {
        print('Anda telah gagal login 3 kali. Akses ditolak.');
        print('=== ATM di Blokir. Keluar Dari Program ===');
        return false;
      }
    }
    return false;
  }

  // Fitur untuk Cek saldo
  void _checkSaldo() {
    print('\nSaldo Anda saat ini: Rp ${userAccount.getSaldo()}');
    print('============================================');
  }

  // Fitur untuk Deposit saldo
  void _deposit() {
    stdout.write('Masukkan jumlah deposit: Rp ');
    String? input = stdin.readLineSync();
    double? amount = double.tryParse(input ?? '');

    if (amount != null && amount > 0) {
      userAccount.deposit(amount);
      transaksiHistory.tambahTransaksi('Deposit', amount);
      print(
          'Berhasil deposit Rp $amount. Saldo Anda sekarang Rp ${userAccount.getSaldo()}');
    } else {
      print('Input tidak valid, harap masukkan angka positif.');
    }
    print('============================================');
  }

  // Fitur untuk Tarik saldo
  void _tarikSaldo() {
    stdout.write('Masukkan jumlah yang ingin ditarik: Rp ');
    String? input = stdin.readLineSync();
    double? amount = double.tryParse(input ?? '');

    if (amount != null && amount > 0) {
      bool success = userAccount.tarikSaldo(amount);
      if (success) {
        transaksiHistory.tambahTransaksi('Tarik Tunai', -amount);
        print(
            'Berhasil menarik Rp $amount. Saldo Anda sekarang Rp ${userAccount.getSaldo()}');
      } else {
        print('Saldo tidak mencukupi. Penarikan gagal.');
      }
    } else {
      print('Input tidak valid, harap masukkan angka positif.');
    }
    print('============================================');
  }

  // Fitur untuk Lihat histori transaksi
  void _viewTransaksiHistory() {
    transaksiHistory.showHistory();
    print('============================================');
  }

  // Fitur untuk Ringkasan transaksi
  void _ringkasanTransaksi() {
    double pendapatan = transaksiHistory.getPendapatan();
    double pengeluaran = transaksiHistory.getPengeluaran();
    print('=== Ringkasan Transaksi ===');
    print('Total Pendapatan: Rp $pendapatan');
    print('Total Pengeluaran: Rp $pengeluaran');
    print('============================================');
  }

  // Fitur untuk Keluar dari aplikasi
  void _exit() {
    print('\nTerima kasih telah menggunakan ATM Buatan Deazard. Sampai jumpa!');
    isRunning = false;
  }
}
