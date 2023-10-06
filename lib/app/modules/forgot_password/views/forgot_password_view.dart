import 'package:flaury/app/theme/colors.dart';
import 'package:flaury/app/widgets/apptext.dart';
import 'package:flaury/app/widgets/space.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/forgot_password_controller.dart';

class ForgotPasswordView extends GetView<ForgotPasswordController> {
  const ForgotPasswordView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          leading: Icon(
            Icons.navigate_before,
            size: 50.h,
            color: AppColors.black,
          ),
          title: BigAppText('Forgot Password'),
          centerTitle: false,
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: Container(
          padding: simPad(20, 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Image.asset(
                  'assets/images/forgot_pass.png',
                  height: 250.h,
                ),
              ),
            ],
          ),
        ),);
  }
}
