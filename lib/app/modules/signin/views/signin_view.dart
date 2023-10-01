import 'package:flaury/app/routes/app_pages.dart';
import 'package:flaury/app/theme/colors.dart';
import 'package:flaury/app/widgets/appbutton.dart';
import 'package:flaury/app/widgets/apptext.dart';
import 'package:flaury/app/widgets/space.dart';
import 'package:flaury/app/widgets/textfields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../controllers/signin_controller.dart';

class SigninView extends GetView<SigninController> {
  const SigninView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                padding: simPad(30.h, 20.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigAppText(
                      'Hi, Welcome Back 👋🏼',
                    ),
                    vSpace(10),
                    SmallAppText('Hello, check out what you missed!'),
                    vSpace(25),
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
                    vSpace(40),
                    Row(
                      children: [
                        const SizedBox(
                          width: 10,
                          height: 10,
                          // child:
                          // CheckboxListTile(value: true, onChanged: ),
                        ),
                        hSpace(100),
                        GestureDetector(
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              builder: (context) => Container(
                                padding: simPad(31, 0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    MedAppText('Make Selection'),
                                    SmallAppText(
                                      'Select One Of The Options given to you',
                                    ),
                                    Container(
                                      padding: const EdgeInsets.all(30.0),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10.0)),
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                          child: SmallAppText(
                            'Forgot Password?',
                            fontWeight: FontWeight.bold,
                            color: AppColors.primary,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: simPad(0, 30.h),
                    child: const AppElevatedButton(
                      title: 'Log In',
                    ),
                  ),
                  vSpace(250.h),
                  Container(
                    padding: simPad(0, 20.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SmallAppText(
                          'Don’t have an account?',
                        ),
                        hSpace(5),
                        GestureDetector(
                          onTap: () => Get.toNamed(Routes.SIGNUP),
                          child: SmallAppText(
                            'Sign Up',
                            fontWeight: FontWeight.bold,
                            color: AppColors.primary,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
