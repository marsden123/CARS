import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:new_acs314b/configs/colors.dart';

class Ons1 extends StatelessWidget {
  const Ons1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Enter your recovery email"),
        centerTitle: true,
        backgroundColor: fourthColor,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/MOTOLOGO.jpg",
                  height: 80,
                  width: 80,
                  fit: BoxFit.contain,
                ),
              ],
            ),
            SizedBox(height: 5),

            Text(
              "email:",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: fourthColor,
              ),
            ),

            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email_sharp, color: sixthColor),
              ),
            ),

            SizedBox(height: 5),

            Text(
              "new password:",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: fourthColor,
              ),
            ),

            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.lock_clock_sharp, color: sixthColor),
              ),
            ),

            SizedBox(height: 5),
            Text(
              "Confirm new password:",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: fourthColor,
              ),
            ),

            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.lock_clock_sharp, color: sixthColor),
              ),
            ),
            SizedBox(height: 5),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  onPressed: () {
                    Get.toNamed("/");
                  },
                  color: fifthColor,
                  height: 50,
                  minWidth: 150,
                  child: const Text(
                    "Back to login",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
