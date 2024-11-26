class akunUser {
  double _saldo = 0.0; // Saldo awal pengguna

  // Mengambil saldo pengguna
  double getSaldo() {
    return _saldo;
  }

  // Menambahkan saldo
  void deposit(double amount) {
    _saldo += amount;
  }

  // Mengurangi saldo
  bool tarikSaldo(double amount) {
    if (amount <= _saldo) {
      _saldo -= amount;
      return true;
    } else {
      return false;
    }
  }
}
