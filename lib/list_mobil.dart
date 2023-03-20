import 'package:flutter/material.dart';

class ListMobil extends StatefulWidget {
  const ListMobil({Key? key}) : super(key: key);

  @override
  State<ListMobil> createState() => _ListMobilState();
}

class _ListMobilState extends State<ListMobil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rental Mobil'),
      ),
    );
  }
}
