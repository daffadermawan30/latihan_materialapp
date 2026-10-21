import 'package:flutter/material.dart';

void main() {
  runApp(const MyLatihan());
}

class MyLatihan extends StatelessWidget {
  const MyLatihan({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DASH-DASH',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      darkTheme: ThemeData.dark(useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(
          title: Row(children: [Center(child: Text('Latihan'))]),
          leading: Icon(Icons.access_alarms_outlined),
          actions: [
            Icon(Icons.abc),
            Icon(Icons.ac_unit_sharp),
            Icon(Icons.account_balance_wallet_sharp),
          ],
          backgroundColor: Colors.deepOrangeAccent,
        ),
        body: Center(child: Text('Hello, World!')),
      ),
    );
  }
}
