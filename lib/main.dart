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
