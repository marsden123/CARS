import 'package:flutter/material.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:new_acs314b/VIEWS/cars.dart';
import 'package:new_acs314b/VIEWS/dashboard.dart';
import 'package:new_acs314b/VIEWS/orders.dart';
import 'package:new_acs314b/VIEWS/profile.dart';
import 'package:new_acs314b/configs/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int position = 0;

  final screens = [
    const MyDashboard(),
    const Mycars(),
    const MyOrders(),
    const ProfileScreen(),
  ];

  final iconList = <IconData>[
    Icons.dashboard,
    Icons.directions_car,
    Icons.receipt_long,
    Icons.person,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[position],

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: iconList,
        activeIndex: position,
        gapLocation: GapLocation.center, // notch for FAB
        notchSmoothness: NotchSmoothness.softEdge, // smooth notch animation
        backgroundColor: thirdColor,
        activeColor: fourthColor,
        inactiveColor: sixthColor,
        onTap: (index) => setState(() => position = index),
      ),
    );
  }
}
