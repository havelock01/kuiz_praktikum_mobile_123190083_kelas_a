import 'package:flutter/material.dart';
import 'package:kuiz_ptm_123190083_plug_a/detail_mobil.dart';
import 'package:kuiz_ptm_123190083_plug_a/rental_car.dart';

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
      body: ListView.builder(
        itemCount: rentalCar.length,
        itemBuilder: (context, index) {
          final RentalCar car = rentalCar[index];
          return Card(
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailMobil(car: car)));
              },
              child: ListTile(
                leading: Image.network(
                  car.images[0],
                  fit: BoxFit.fill,
                  width: 100,
                ),
                title: Text(car.brand + " " + car.model),
                subtitle: Text(car.rentalPricePerDay + " / hari"),
              ),
            ),
          );
        },
      ),
    );
  }
}
