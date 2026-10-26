# Latihan MaterialApp

## pertemuan 4
- Nama: Daffa Dermawan
- Kelas: TI24SE2
- NIM: 1124160177

## Ringkasan Tiap Commit

### 1. First commit
Setup awal project, baru berupa kerangka kosong sebelum aplikasi sebenarnya dibuat.

### 2. Membuat class MyLatihan
Membuat halaman aplikasi pertama kali, lengkap dengan judul aplikasi, pengaturan tema warna terang dan gelap, serta tampilan awal berisi bar judul di atas dan tulisan sambutan di tengah layar.

### 3. Memisahkan home dengan membuat kelas MyHomepage
Merapikan struktur kode dengan memisahkan tampilan halaman utama ke bagian/class tersendiri, supaya pengaturan aplikasi dan tampilan halamannya tidak tercampur dalam satu bagian.

### 4. Menyesuaikan dengan poin tugas, dan sedikit mencoba variasi UI lain
Mengganti nama halaman utama, menambahkan ikon di samping judul pada bar atas, menghapus ikon di pojok kiri bar atas, dan menambahkan ikon di samping tulisan sambutan pada tampilan utama.

## Kode Lengkap (lib/main.dart)

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const MyLatihan());
}

class MyLatihan extends StatelessWidget {
  const MyLatihan({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Mahasiswa',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      darkTheme: ThemeData.dark(useMaterial3: true),
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [Icon(Icons.school), Text(' Dashboard Mahasiswa')],
        ),
        actions: [
          Icon(Icons.abc),
          Icon(Icons.ac_unit_sharp),
          Icon(Icons.account_balance_wallet_sharp),
        ],
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [Icon(Icons.waving_hand), Text(' Hello, World!')],
        ),
      ),
    );
  }
}
```
