class historyTransaksi {
  final List<Map<String, dynamic>> _history = []; // liat buat menyimpan histori

  // nambahin transaksi ke histori
  void tambahTransaksi(String type, double amount) {
    _history.add({
      'type': type,
      'amount': amount,
      'date': DateTime.now().toString(),
    });
  }

  // nampilin histori transaksi
  void showHistory() {
    if (_history.isEmpty) {
      print('\nTidak ada histori transaksi.');
    } else {
      print('\n=== Histori Transaksi ===');
      for (var transaction in _history) {
        print(
            '${transaction['date']} - ${transaction['type']}: Rp ${transaction['amount']}');
      }
    }
  }

  // ambil total pendapatan
  double getPendapatan() {
    return _history
        .where((transaksi) => transaksi['amount'] > 0)
        .fold(0.0, (sum, item) => sum + item['amount']);
  }

  // ambil total pengeluaran
  double getPengeluaran() {
    return _history
        .where((transaksi) => transaksi['amount'] < 0)
        .fold(0.0, (sum, item) => sum + item['amount']);
  }
}
