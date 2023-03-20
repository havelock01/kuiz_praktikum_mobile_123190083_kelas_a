import 'package:flutter/material.dart';
import 'list_mobil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kuiz Praktikum TPM 123190083',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ListMobil(),
    );
  }
}
