import 'package:flaury/app/routes/app_pages.dart';
import 'package:flaury/app/theme/colors.dart';
import 'package:flaury/app/widgets/appbutton.dart';
import 'package:flaury/app/widgets/apptext.dart';
import 'package:flaury/app/widgets/checkbokstls.dart';
import 'package:flaury/app/widgets/space.dart';
import 'package:flaury/app/widgets/textfields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../controllers/signin_controller.dart';

class SigninView extends GetView<SigninController> {
  SigninView({super.key});
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Form(
            key: controller.LoginformKey,
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
                      SmallAppText(
                        'Hello, check out what you missed!',
                        color: AppColors.greytext,
                      ),
                      vSpace(25),
                      AppTextFormField(
                        keyboardType: TextInputType.emailAddress,
                        label: 'Email Address',
                        hint: 'Enter Your Email Address',
                        controller: controller.emailController,
                        onSaved: (value) {
                          controller.email = value!;
                        },
                        validator: (value) {
                          return controller.validateEmail(value!);
                        },
                      ),
                      vSpace(20),
                      Obx(
                        () => AppTextFormField(
                          label: 'Password',
                          hint: 'Enter Your Password',
                          obscureText: controller.isPasswordHidden.value,
                          suffixIcon: IconButton(
                            onPressed: () {
                              controller.isPasswordHidden.value =
                                  !controller.isPasswordHidden.value;
                            },
                            icon: Icon(
                              color: AppColors.greytext,
                              controller.isPasswordHidden.value
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                          ),
                          controller: controller.passwordController,
                          onSaved: (value) {
                            controller.password = value!;
                          },
                          validator: (value) {
                            return controller.validatePassword(value!);
                          },
                        ),
                      ),
                      vSpace(15),
                      // Forgot Password
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const MyCheckbox(),
                              SmallAppText(
                                'Remember me',
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () => Get.toNamed(Routes.FORGOT_PASSWORD),
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
                // Log In
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: simPad(0, 30.h),
                      child: AppElevatedButton(
                        title: 'Log In',
                        onPressed: () {
                          controller.login();
                          Get.toNamed(Routes.HOME);
                        },
                      ),
                    ),
                    vSpace(50),
                    // Sign Up
                    Container(
                      padding: simPad(0, 20.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MedAppText(
                            'Don’t have an account?',
                            fontSize: 20,
                          ),
                          hSpace(5),
                          GestureDetector(
                            onTap: () => Get.toNamed(Routes.SIGNUP),
                            child: MedAppText(
                              'Sign Up',
                              fontWeight: FontWeight.bold,
                              color: AppColors.primary,
                              fontSize: 18,
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
      ),
    );
  }
}
