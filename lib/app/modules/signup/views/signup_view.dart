import 'package:flaury/app/routes/app_pages.dart';
import 'package:flaury/app/theme/colors.dart';
import 'package:flaury/app/widgets/appbutton.dart';
import 'package:flaury/app/widgets/apptext.dart';
import 'package:flaury/app/widgets/space.dart';
import 'package:flaury/app/widgets/textfields.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  const SignupView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Form(
            key: controller.signupformKey,
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
                      AppTextFormField(
                        label: 'Name',
                        hint: 'Enter Your Name',
                        controller: controller.nameController,
                        onSaved: (value) {
                          controller.name = value!;
                        },
                        validator: (value) {
                          return controller.validateName(value!);
                        },
                      ),
                      vSpace(20),
                      AppTextFormField(
                        label: 'Email Address',
                        hint: 'Enter Your Email Address',
                        keyboardType: TextInputType.emailAddress,
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
                      vSpace(20),
                      AppTextFormField(
                        label: 'Mobile Number',
                        hint: '08072101662',
                        keyboardType: TextInputType.number,
                        controller: controller.mobileController,
                        onSaved: (value) {
                          controller.mobile = value!;
                        },
                        validator: (value) {
                          return controller.validateMobileNumber(value!);
                        },
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
                      child: AppElevatedButton(
                        title: 'Sign Up',
                        onPressed: () {
                          controller.signUp();
                        },
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
      ),
    );
  }
}
