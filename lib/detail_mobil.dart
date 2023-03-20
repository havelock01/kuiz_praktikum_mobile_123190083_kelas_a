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
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(4),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 3,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) =>
                      Image.network(widget.car.images[index]),
                  itemCount: 3,
                ),
              ),
              Container(
                margin: EdgeInsets.all(10.0),
                child: Text(
                  widget.car.brand + " " + widget.car.model,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                child: Text(
                  'Brand    : ${widget.car.brand}' +
                      '\nModel  : ${widget.car.model}' +
                      '\nYear   : ${widget.car.year}' +
                      '\nPrice per Day   : ${widget.car.rentalPricePerDay}' +
                      '\nAvailable   : ${widget.car.available}',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
