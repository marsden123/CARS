import 'package:flutter/material.dart';
import 'package:new_acs314b/configs/charts.dart'; // contains RevenueChart
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
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Dashboard cards in a grid
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: 2.4,
              children: const [
                ObjectW(
                  icon: Icons.directions_car,
                  title: "Cars",
                  subtitle: "12 listings",
                ),
                ObjectW(icon: Icons.sell, title: "Sold Cars", subtitle: "45"),
                ObjectW(
                  icon: Icons.favorite,
                  title: "Most Viewed",
                  subtitle: "8 cars",
                ),
                ObjectW(
                  icon: Icons.attach_money,
                  title: "Revenue",
                  subtitle: "569,000 Ksh",
                ),
              ],
            ),

            const SizedBox(height: 30),

            // Chart section
            const Text(
              "Monthly Revenue",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const RevenueChart(), // ✅ chart now has its own space
          ],
        ),
      ),
    );
  }
}
