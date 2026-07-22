import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:new_acs314b/configs/colors.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Registration"),
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
              "Full Name:",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: fourthColor,
              ),
            ),

            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person, color: sixthColor),
              ),
            ),

            SizedBox(height: 5),

            Text(
              "Email:",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: fourthColor,
              ),
            ),

            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email, color: sixthColor),
              ),
            ),

            SizedBox(height: 5),

            Text(
              "Password:",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: fourthColor,
              ),
            ),

            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.lock, color: sixthColor),
              ),
            ),

            SizedBox(height: 5),

            Text(
              "Confirm Password:",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: fourthColor,
              ),
            ),

            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.lock_outline, color: sixthColor),
              ),
            ),

            SizedBox(height: 5),

            Text(
              "Phone number:",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: fourthColor,
              ),
            ),

            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.phone_android, color: sixthColor),
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
                    "Register",
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
