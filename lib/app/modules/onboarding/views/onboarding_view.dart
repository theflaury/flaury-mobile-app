import 'package:flaury/app/routes/app_pages.dart';
import 'package:flaury/app/widgets/onbardingpage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/onboarding_controller.dart';

// ignore: must_be_immutable
class OnboardingView extends GetView<OnboardingController> {
  OnboardingView({super.key});
  PageController pageController = PageController(
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: [
          OnboardingPage(
            image: const AssetImage('assets/images/onboarding1.png'),
            text1: "Great Look Isn`t By Accident but by Appointment",
            buttontext: 'Continue',
            onPressed: () {
              pageController.animateToPage(1,
                  duration: const Duration(milliseconds: 150),
                  curve: Curves.easeIn);
            },
          ),
          OnboardingPage(
            image: const AssetImage('assets/images/onboarding2.png'),
            text1: "Hire a Beauty Service Provider in Minutes!",
            buttontext: 'Continue',
            onPressed: () {
              pageController.animateToPage(2,
                  duration: const Duration(milliseconds: 250),
                  curve: Curves.easeIn);
            },
          ),
          OnboardingPage(
            image: const AssetImage('assets/images/onboarding3.png'),
            text1: "Earn More Income by Providing your services",
            buttontext: 'Continue', 
            onPressed: () {
              Get.toNamed(Routes.SIGNUP);
            },
          ),
        ],
      ),
    );
  }
}
