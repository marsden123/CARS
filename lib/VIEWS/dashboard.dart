import 'package:flutter/material.dart';
import 'package:new_acs314b/configs/colors.dart';
import 'package:new_acs314b/configs/swidgets.dart';

class MyDashboard extends StatefulWidget {
  const MyDashboard({super.key});

  @override
  State<MyDashboard> createState() => _MyDashboardState();
}

class _MyDashboardState extends State<MyDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: thirdColor,
      appBar: AppBar(
        title: const Text(
          "Dashboard",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: fifthColor,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: 2.4,
          children: [
            ObjectW(
              icon: Icons.directions_car,
              title: "Cars",
              subtitle: "12 listings",
              height: 100,
              width: 100,
            ),
            ObjectW(
              icon: Icons.sell,
              title: "Sold cars",
              subtitle: "45",
              height: 100,
              width: 100,
            ),
            ObjectW(
              icon: Icons.favorite,
              title: "Most viewed",
              subtitle: "8 cars",
              // height: 100,
              width: 100,
            ),
            ObjectW(
              icon: Icons.person,
              title: "Revenue this month",
              subtitle: "569, 000 ksh",
              height: 100,
              width: 100,
            ),
          ],
        ),
      ),
    );
  }
}
