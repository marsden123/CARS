import 'package:flutter/material.dart';
import 'package:new_acs314b/configs/colors.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: thirdColor,
      appBar: AppBar(
        title: const Text("Profile"),
        centerTitle: true,
        backgroundColor: fifthColor,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Your Name : ",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: fourthColor,
              ),
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person_2),
                prefixIconColor: sixthColor,
              ),
            ),

            Text(
              "Email: ",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: fourthColor,
              ),
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email_outlined),
                prefixIconColor: sixthColor,
              ),
            ),

            Text(
              "Phone : ",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: fourthColor,
              ),
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.phone_android),
                prefixIconColor: sixthColor,
              ),
            ),

            SizedBox(height: 20),
            Center(
              child: MaterialButton(
                onPressed: () {},
                color: fifthColor,
                height: 40,
                minWidth: 120,
                child: Text("Save", style: TextStyle(color: thirdColor)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
