import 'package:flaury/app/theme/colors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/splashscreen_controller.dart';

class SplashscreenView extends GetView<SplashscreenController> {
  const SplashscreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.primary,
        child: const Center(
          child: Text(
            'FLAURY',
            style: TextStyle(fontSize: 50, color: AppColors.white ),
          ),
        ),
      ),
    );
  }
}
