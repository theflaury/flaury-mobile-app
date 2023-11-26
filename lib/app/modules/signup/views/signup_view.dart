import 'package:flaury/app/routes/app_pages.dart';
import 'package:flaury/app/theme/colors.dart';
import 'package:flaury/app/widgets/appbutton.dart';
import 'package:flaury/app/widgets/apptext.dart';
import 'package:flaury/app/widgets/space.dart';
import 'package:flaury/app/widgets/textfields.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  const SignupView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                padding: simPad(20, 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigAppText('Create your account'),
                    vSpace(20),
                    const AppTextFormField(
                      label: 'Name',
                      hint: 'Enter Your Name',
                    ),
                    vSpace(20),
                    const AppTextFormField(
                      label: 'Email Address',
                      hint: 'Enter Your Email Address',
                    ),
                    vSpace(20),
                    AppTextFormField(
                      label: 'Password',
                      hint: 'Enter Your Password',
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Iconsax.eye_slash_copy,
                        ),
                      ),
                    ),
                    vSpace(20),
                    const AppTextFormField(
                      label: 'Mobile Number',
                      hint: '08072101662',
                    ),
                    vSpace(50),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: simPad(0, 30),
                    child: const AppElevatedButton(
                      title: 'Sign Up',
                    ),
                  ),
                  vSpace(50),
                  Container(
                    padding: simPad(0, 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SmallAppText(
                          'Already have an account?',
                        ),
                        hSpace(5),
                        GestureDetector(
                          onTap: () => Get.toNamed(Routes.SIGNIN),
                          child: SmallAppText(
                            'Login',
                            fontWeight: FontWeight.bold,
                            color: AppColors.primary,
                          ),
                        )
                      ],
                    ),
                  ),
                  vSpace(20),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
