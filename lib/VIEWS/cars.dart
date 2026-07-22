import 'package:flutter/material.dart';
import 'package:new_acs314b/configs/colors.dart';
import 'package:new_acs314b/configs/swidgets.dart';

class Mycars extends StatefulWidget {
  const Mycars({super.key});

  @override
  State<Mycars> createState() => _MycarsState();
}

class _MycarsState extends State<Mycars> {
  final List<Map<String, dynamic>> _cars = [
    {
      'title': 'Nissan Note Epower 2021',
      'location': 'Ridgeways · 10 min ago',
      'specs': '1200 cc · automatic · diesel',
      'price': 'KES 1,750,000',
      'image': 'assets/whiteo.jpg',
    },
    {
      'title': 'Toyota Harrier 2018',
      'location': 'Nairobi · 2 hours ago',
      'specs': '2400 cc · automatic · petrol',
      'price': 'KES 4,500,000',
      'image': 'assets/toyota.jpg',
    },
    {
      'title': 'Renault Van',
      'location': 'Madrid · 1 hour ago',
      'specs': '1600 cc · manual · diesel',
      'condition': 'Local used',
      'price': 'KES 1,200,000',
      'image': 'assets/Vant.jpg',
    },
    {
      'title': 'BMW Sedan',
      'location': 'Nairobi · 30 min ago',
      'specs': '2000 cc · automatic · petrol',
      'condition': 'Foreign used',
      'price': 'KES 3,800,000',
      'image': 'assets/bmw4.jpg',
    },
    {
      'title': 'Audi SUV',
      'location': 'Westlands · 2 hours ago',
      'specs': '3000 cc · automatic · petrol',
      'condition': 'Foreign used',
      'price': 'KES 5,500,000',
      'image': 'assets/audiw.jpg',
    },
    {
      'title': 'Ferrari F12tdf',
      'location': 'Zurich · 10 min ago',
      'specs': '6200 cc · automatic · petrol',
      'condition': 'Foreign used',
      'price': 'KES 45,000,000',
      'image': 'assets/fer.jpg',
    },
    {
      'title': 'Honda Sedan',
      'location': 'Bentota · 1 hour ago',
      'specs': '1800 cc · automatic · petrol',
      'condition': 'Local used',
      'price': 'KES 2,200,000',
      'image': 'assets/Hondac.jpg',
    },
    {
      'title': 'Mercedes-Benz',
      'location': 'Virginia · 3 hours ago',
      'specs': '2200 cc · automatic · petrol',
      'condition': 'Foreign used',
      'price': 'KES 6,000,000',
      'image': 'assets/mercedes.jpg',
    },
    {
      'title': 'Nissan Skyline GT-R R34',
      'location': 'Tokyo · 20 min ago',
      'specs': '2600 cc · manual · petrol',
      'condition': 'Foreign used',
      'price': 'KES 12,000,000',
      'image': 'assets/nissang.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: thirdColor,
      appBar: AppBar(
        title: const Text(
          "My Cars",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: fifthColor,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: GridView.builder(
          itemCount: _cars.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 1.0,
          ),
          itemBuilder: (context, index) {
            final car = _cars[index];
            return ObjectW(
              imagePath: car['image'],
              title: car['title'],
              subtitle: car['specs'],
              price: car['price'],
              location: car['location'],
              height: 200,
              width: double.infinity,
            );
          },
        ),
      ),
    );
  }
}
