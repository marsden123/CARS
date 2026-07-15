import 'package:flutter/material.dart';
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
        backgroundColor: primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  "https://placehold.co/600x400/000000/FFFFFF/png",
                  height: 150,
                  width: 150,
                ),
              ],
            ),

            const SizedBox(height: 20),

            Text(
              "Full Name:",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: secondaryColor,
              ),
            ),

            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person),
              ),
            ),

            const SizedBox(height: 15),

            Text(
              "Email:",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: secondaryColor,
              ),
            ),

            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email),
              ),
            ),

            const SizedBox(height: 15),

            Text(
              "Password:",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: secondaryColor,
              ),
            ),

            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.lock),
              ),
            ),

            const SizedBox(height: 15),

            Text(
              "Confirm Password:",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: secondaryColor,
              ),
            ),

            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.lock_outline),
              ),
            ),

            const SizedBox(height: 25),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  onPressed: () {},
                  color: primaryColor,
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
