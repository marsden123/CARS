import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_acs314b/configs/colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: primaryColor,
        title: const Text("Grading App"),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.logout)),
        ],
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
                  "assets/daystar.jpg",
                  height: 200,
                  width: 400,
                  fit: BoxFit.contain,
                ),
              ],
            ),

            Text(
              "Username:",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: secondaryColor,
              ),
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.access_alarms),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Password:",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: secondaryColor,
              ),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.cabin_rounded),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  onPressed: () {
                    Get.toNamed("/home");
                  },
                  color: primaryColor,
                  height: 50,
                  minWidth: 100,

                  child: const Text(
                    "Login",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  child: Text(
                    "Not Registered? Sign up",
                    style: TextStyle(color: secondaryColor),
                  ),
                  onTap: () {
                    Get.toNamed("register");
                  },
                ),
                // SizedBox(width: 10),
                Spacer(),
                Text(
                  "Forgot Password? Reset",
                  style: TextStyle(color: secondaryColor),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
