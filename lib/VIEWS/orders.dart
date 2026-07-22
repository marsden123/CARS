import 'package:flutter/material.dart';
import 'package:new_acs314b/configs/colors.dart';

class MyOrders extends StatefulWidget {
  const MyOrders({super.key});

  @override
  State<MyOrders> createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> {
  // Sample orders data
  final List<Map<String, dynamic>> _orders = [
    {
      'id': 'ORD001',
      'car': 'Nissan Note Epower 2021',
      'buyer': 'John Doe',
      'date': '2026-07-20',
      'status': 'Pending',
      'price': 'KES 1,750,000',
      'image': 'assets/whiteo.jpg',
    },
    {
      'id': 'ORD002',
      'car': 'Toyota Harrier 2018',
      'buyer': 'Mary Wanjiru',
      'date': '2026-07-19',
      'status': 'Delivered',
      'price': 'KES 4,500,000',
      'image': 'assets/toyota.jpg',
    },
    {
      'id': 'ORD003',
      'car': 'BMW Sedan 2020',
      'buyer': 'Ali Khan',
      'date': '2026-07-18',
      'status': 'Confirmed',
      'price': 'KES 3,800,000',
      'image': 'assets/bmw4.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Orders",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: fifthColor,
        elevation: 0,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: _orders.length,
        itemBuilder: (context, index) {
          final order = _orders[index];
          return Card(
            margin: const EdgeInsets.only(bottom: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(12),
                  ),
                  child: Image.asset(
                    order['image'],
                    height: 180,
                    width: double.infinity,
                    fit: BoxFit.contain, // ensures full fit
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        order['car'],
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text("Buyer: ${order['buyer']}"),
                      Text("Date: ${order['date']}"),
                      Text("Status: ${order['status']}"),
                      const SizedBox(height: 6),
                      Text(
                        order['price'],
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: sixthColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
