import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:new_acs314b/configs/colors.dart';
import 'package:new_acs314b/configs/swidgets.dart'; // for ObjectW

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: thirdColor,
      appBar: AppBar(
        title: const Text("My Profile"),
        centerTitle: true,
        backgroundColor: fifthColor,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Profile picture
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/mustaang.jpg"),
            ),
            const SizedBox(height: 12),
            const Text(
              "Priyal Sharma",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),

            ObjectW(
              icon: Icons.email_outlined,
              title: "Email",
              subtitle: "priyalnem@gmail.com",
              height: 70,
              width: double.infinity,
            ),
            ObjectW(
              icon: Icons.phone_android,
              title: "Phone",
              subtitle: "+254798237463",
              height: 70,
              width: double.infinity,
            ),
            ObjectW(
              icon: Icons.location_on,
              title: "Location",
              subtitle: "Machakos County, Kenya",
              height: 70,
              width: double.infinity,
            ),

            const SizedBox(height: 20),

            // Edit button
            MaterialButton(
              onPressed: () {
                Get.toNamed("/");
              },
              color: fifthColor,
              height: 40,
              minWidth: 120,
              child: Text("Leave account", style: TextStyle(color: thirdColor)),
            ),
          ],
        ),
      ),
    );
  }
}
