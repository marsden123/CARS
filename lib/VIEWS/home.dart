import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:new_acs314b/VIEWS/cars.dart';
import 'package:new_acs314b/VIEWS/dashboard.dart';
import 'package:new_acs314b/VIEWS/orders.dart';
import 'package:new_acs314b/VIEWS/profile.dart';

int position = 0;
var screens = [MyDashboard(), Mycars(), MyOrders(), ProfileScreen()];

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.blueAccent,
        items: <Widget>[
          Icon(Icons.add, size: 30),
          Icon(Icons.list, size: 30),
          Icon(Icons.compare_arrows, size: 30),
          Icon(Icons.person),
        ],
        onTap: (index) {
          setState(() {});
          position = index;
          //Handle button tap
        },
      ),
      body: screens[position],
    );
  }
}
