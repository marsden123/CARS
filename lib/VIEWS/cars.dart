import 'package:flutter/material.dart';
import 'package:new_acs314b/configs/colors.dart';

class Mycars extends StatefulWidget {
  const Mycars({super.key});

  @override
  State<Mycars> createState() => _MycarsState();
}

class _MycarsState extends State<Mycars> {
  // Sample car data - you can replace with your own
  final List<Map<String, dynamic>> _cars = [
    {
      'title': 'Nissan Note Epower 2021',
      'location': 'Ridgeways · 10 min ago',
      'specs': '1200 cc · automatic · diesel',
      'condition': 'Foreign used',
      'price': 'KES 1,750,000',
      'financing': 'Cars360 Financing',
      'inspection': 'View inspection report',
      'image': 'assets/car1.jpg',
    },
    {
      'title': 'Toyota Harrier 2018',
      'location': 'Nairobi · 2 hours ago',
      'specs': '2400 cc · automatic · petrol',
      'condition': 'Local used',
      'price': 'KES 4,500,000',
      'financing': 'Cars360 Financing',
      'inspection': 'View inspection report',
      'image': 'assets/car2.jpg',
    },
    // Add more cars here...
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
        child: ListView.builder(
          itemCount: _cars.length,
          itemBuilder: (context, index) {
            return _buildCarCard(_cars[index]);
          },
        ),
      ),
    );
  }

  // Car Card Widget
  Widget _buildCarCard(Map<String, dynamic> car) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: 0.1),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title
          Text(
            car['title'],
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: fourthColor,
            ),
          ),

          const SizedBox(height: 4),

          // Location
          Row(
            children: [
              Icon(Icons.location_on, size: 14, color: Colors.grey[600]),
              const SizedBox(width: 4),
              Text(
                car['location'],
                style: TextStyle(fontSize: 12, color: Colors.grey[600]),
              ),
            ],
          ),

          const SizedBox(height: 6),

          // Specs Row
          Wrap(
            spacing: 6,
            runSpacing: 4,
            children: car['specs'].split(' · ').map<Widget>((spec) {
              return Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  spec,
                  style: TextStyle(fontSize: 11, color: Colors.grey[700]),
                ),
              );
            }).toList(),
          ),

          const SizedBox(height: 4),

          // Condition
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              car['condition'],
              style: TextStyle(fontSize: 11, color: Colors.grey[600]),
            ),
          ),

          const SizedBox(height: 10),

          // Divider
          const Divider(thickness: 1),

          const SizedBox(height: 8),

          // Price
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "SELLING PRICE",
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.grey[500],
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    car['price'],
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: fifthColor,
                    ),
                  ),
                ],
              ),
              // Financing and Inspection Tags
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  _buildTag(
                    Icons.monetization_on,
                    car['financing'],
                    Colors.green,
                  ),
                  const SizedBox(height: 2),
                  _buildTag(Icons.assignment, car['inspection'], Colors.blue),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Tag Widget
  Widget _buildTag(IconData icon, String label, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 10, color: color),
          const SizedBox(width: 2),
          Text(
            label,
            style: TextStyle(
              fontSize: 9,
              color: color,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
