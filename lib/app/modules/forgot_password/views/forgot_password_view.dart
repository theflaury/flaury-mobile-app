import 'package:flaury/app/theme/colors.dart';
import 'package:flaury/app/widgets/apptext.dart';
import 'package:flaury/app/widgets/fgbutton.dart';
import 'package:flaury/app/widgets/space.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import '../../../routes/app_pages.dart';
import '../controllers/forgot_password_controller.dart';

class ForgotPasswordView extends GetView<ForgotPasswordController> {
  const ForgotPasswordView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Get.offAllNamed(Routes.SIGNIN);
          },
          icon: Icon(
            Icons.navigate_before,
            size: 50.h,
            color: AppColors.black,
          ),
        ),
        toolbarHeight: 70.h,
        title: BigAppText('Forgot Password'),
        centerTitle: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: Container(
          padding: simPad(20, 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Image.asset(
                  'assets/images/forgot_pass.png',
                  height: 250.h,
                ),
              ),
              vSpace(30),
              MedAppText(
                'Select how you would like to reset your password',
                fontSize: 20,
              ),
              vSpace(50),
              GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.PHONEAUTH);
                  // Handle tap gesture here (e.g., navigate to another page)
                  if (kDebugMode) {
                    print('SMS container tapped!');
                  }
                },
                child: const FgButton(
                  bordercolor: AppColors.primary,
                  hint: 'via SMS',
                  label: '+2348072****',
                  icon: Iconsax.message,
                ),
              ),
              vSpace(30),
              GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.EMAILAUTH);
                  // Handle tap gesture here (e.g., navigate to another page)
                  if (kDebugMode) {
                    print('Email container tapped!');
                  }
                },
                child: const FgButton(
                  bordercolor: AppColors.primary,
                  hint: 'via Email',
                  label: 'bec***om@mail.com',
                  icon: Icons.email_rounded,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
