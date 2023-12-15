import 'package:flaury/app/theme/colors.dart';
import 'package:flaury/app/widgets/apptext.dart';
import 'package:flaury/app/widgets/otp.dart';
import 'package:flaury/app/widgets/space.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../controllers/phoneauth_controller.dart';

class PhoneauthView extends GetView<PhoneauthController> {
  const PhoneauthView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Get.back();
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
          padding: simPad(20, 15),
          child: Column(
            children: [
              MedAppText(
                'Code has been sent to +2348072****',
                textAlign: TextAlign.center,
                fontSize: 20,
              ),
              vSpace(30),
              Container(
                padding: simPad(20, 15),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Form(
                      child: Row(
                        children: [
                          SizedBox(
                            height: 68,
                            width: 64,
                            child: Otp(
                              keyboardType: TextInputType.number,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Form(
                      child: Row(
                        children: [
                          SizedBox(
                            height: 68,
                            width: 64,
                            child: Otp(
                              keyboardType: TextInputType.number,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Form(
                      child: Row(
                        children: [
                          SizedBox(
                            height: 68,
                            width: 64,
                            child: Otp(
                              keyboardType: TextInputType.number,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Form(
                      child: Row(
                        children: [
                          SizedBox(
                            height: 68,
                            width: 64,
                            child: Otp(
                              keyboardType: TextInputType.number,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              vSpace(30),
              MedAppText(
                'Resend code in 38s',
                fontSize: 20,
                // to configure timer
                color: AppColors.primary,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
