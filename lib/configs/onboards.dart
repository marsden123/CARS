import 'package:flutter/material.dart';
import 'package:new_acs314b/configs/colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _goToLogin() {
    Get.toNamed("/home");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: [
              Container(
                color: sixthColor,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.car_rental_outlined,
                        size: 120,
                        color: Colors.white,
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Welcome to MOTOMOTO DEALERS\nBuy and sell cars easily",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),

              Container(
                color: fifthColor,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.shopping_cart_checkout_outlined,
                        size: 120,
                        color: Colors.white,
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Track Your Orders\nManage purchases in one place\nMOMOTO LIKES YOU HAPPY!",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          // ✅ Page indicator
          Align(
            alignment: const Alignment(0, 0.7),
            child: SmoothPageIndicator(
              controller: _controller,
              count: 2,
              effect: const WormEffect(
                dotHeight: 10,
                dotWidth: 10,
                activeDotColor: Colors.blueAccent,
              ),
            ),
          ),

          Align(
            alignment: const Alignment(0, 0.9),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: _goToLogin,
                    child: const Text(
                      "Skip",
                      style: TextStyle(
                        color: sixthColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      if (_controller.page == 1) {
                        _goToLogin();
                      } else {
                        _controller.nextPage(
                          duration: const Duration(milliseconds: 400),
                          curve: Curves.easeInOut,
                        );
                      }
                    },
                    child: const Text(
                      "Next",
                      style: TextStyle(
                        color: sixthColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
