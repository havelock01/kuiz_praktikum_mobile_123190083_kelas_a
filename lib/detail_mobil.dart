import 'package:flutter/material.dart';
import 'rental_car.dart';

class DetailMobil extends StatefulWidget {
  final RentalCar car;
  const DetailMobil({Key? key, required this.car}) : super(key: key);

  @override
  State<DetailMobil> createState() => _DetailMobilState();
}

class _DetailMobilState extends State<DetailMobil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.car.brand + " " + widget.car.model),
      ),
    );
  }
}
