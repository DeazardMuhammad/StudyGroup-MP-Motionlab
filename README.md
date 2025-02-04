
---

# 📘 **Rangkuman Belajar Flutter & Git**  

---

## 📌 **Minggu ke-0: Version Control (Git)**  
📅 **Tanggal**: 13 November  
**Topik yang dipelajari**:  
- Cara menggunakan **GitHub** sebagai platform version control.  
- Konsep dasar Git:  
  - `push` dan `pull` untuk mengunggah dan menarik perubahan.  
  - `branch` untuk kolaborasi antar tim.  
  - `log`, `commit`, `rebase`, dan `revert` untuk mengatur histori perubahan.  

---

## 📌 **Minggu ke-1: Flutter & Dasar-Dasar Dart**  
📅 **Tanggal**: 20 November  
**Topik yang dipelajari**:  
- **Flutter**: Framework yang digunakan untuk membuat aplikasi mobile berbasis **cross-platform** (iOS & Android) menggunakan bahasa Dart.  
- **Konsep dasar Dart**:  
  - **Tipe Data**: Null safety, list, map, dan class.  
  - **Logika Pemrograman**: Percabangan, perulangan, fungsi, dan aritmatika.  
- **Keunggulan Flutter**: Dikembangkan oleh Google dan bertindak sebagai penghubung antara kode Dart dengan platform iOS/Android.  

---

## 📌 **Minggu ke-2: Widget Layouting di Flutter**  
📅 **Tanggal**: 28 November  
**Topik yang dipelajari**:  
- **Widget Layouting**:  
  - **Column**: Menyusun widget secara vertikal.  
  - **Row**: Menyusun widget secara horizontal.  
  - **Stack**: Menumpuk widget sehingga saling menutupi.  

---

## 📌 **Minggu ke-3: Package, Navigasi, dan IDX**  
📅 **Tanggal**: 4 & 5 Desember  
**Topik yang dipelajari**:  
### 📅 **Tanggal 4 Desember**:  
- **Package**:  
  - Menggunakan package seperti **Lottie** dan **Google Fonts** untuk meningkatkan fitur aplikasi.  
  - Sumber package: [pub.dev](https://pub.dev) & [fluttergems.dev](https://fluttergems.dev).  
- **Navigasi**:  
  - `push`: Menambah rute baru.  
  - `pop`: Menghapus rute saat ini.  
- **IDX**: Alternatif ngoding via website jika laptop mengalami lag.  

### 📅 **Tanggal 5 Desember**:  
- Tidak masuk kelas (izin).  

---

## 📌 **Minggu ke-4: State Management & MVC**  
📅 **Tanggal**: 11 Desember  
**Topik yang dipelajari**:  
- **State Management**:  
  - Proses pengelolaan data (state) dalam aplikasi.  
- **MVC Pattern**:  
  - **Model**: Mengelola data.  
  - **View**: Menampilkan UI.  
  - **Controller**: Penghubung antara Model dan View.  
- **GetX Reactive**:  
  - Mengobservasi perubahan data secara langsung menggunakan `.obs`.  
- **GetX Simple**:  
  - Mengelola state tanpa reactive.  

---

## 📌 **Minggu ke-5: GetX Pattern & CLI**  
📅 **Tanggal**: 18 Desember  
**Topik yang dipelajari**:  
- **GetX Pattern**: Memanfaatkan GetX untuk:  
  - Navigasi antar halaman.  
  - Pengelolaan state.  
- **Get CLI**: Alat untuk mempercepat pembuatan controller dan file terkait lainnya dalam Flutter.  

---

## 📌 **Minggu ke-6: API & Future**  
📅 **Tanggal**: 19 Januari  
**Topik yang dipelajari**:  
- **Future**:  
  - Objek Dart untuk mengelola proses **asinkron** seperti mengambil data dari server.  
  - Menggunakan `async` dan `await` untuk mempermudah manajemen proses.  
- **API (Application Programming Interface)**:  
  - Jembatan komunikasi antara aplikasi client dan server.  
  - Mengintegrasikan API di Flutter menggunakan package seperti `http` atau `dio`.  
  - Operasi HTTP: `GET`, `POST`, `PUT`, `DELETE`.  
  - Menampilkan data yang diambil dari server ke aplikasi Flutter.  

---

---

## 📌 **Minggu ke-7: Working with Local Storage**
**Topik yang dipelajari**  
- **Local Storage**:  
  - Menyimpan data secara permanen tanpa koneksi internet.  
  - Berguna untuk pengaturan aplikasi, data pengguna, atau informasi lainnya.  
- **Jenis Local Storage di Flutter**:  
  1. **SharedPreferences**: Key-value storage, cocok untuk data kecil seperti pengaturan atau status login.  
  2. **Hive**: Database ringan, mendukung key-value dan objek Dart, menggunakan **Box** untuk penyimpanan async.  
  3. **SQLite**: Database relasional berbasis tabel, cocok untuk struktur data kompleks dengan relasi antar tabel.  

---