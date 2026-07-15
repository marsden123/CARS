import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:new_acs314b/VIEWS/home.dart';
import 'package:new_acs314b/VIEWS/login.dart';
import 'package:new_acs314b/VIEWS/registration.dart';

var routes = [
  GetPage(name: "/", page: () => LoginScreen()),
  GetPage(name: "/register", page: () => SignupScreen()),
  GetPage(name: "home", page: () => HomeScreen()),
];
