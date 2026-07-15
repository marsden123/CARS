import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:new_acs314b/VIEWS/login.dart';

import 'package:new_acs314b/configs/routes.dart';
//import 'package:new_acs314b/configs/colors.dart';

void main() {
  runApp(const GradingApp());
}

class GradingApp extends StatefulWidget {
  const GradingApp({super.key});

  @override
  State<GradingApp> createState() => _GradingAppState();
}

class _GradingAppState extends State<GradingApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
      initialRoute: "/",
      getPages: routes,
    );
  }
}
