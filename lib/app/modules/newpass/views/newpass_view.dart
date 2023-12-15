import 'package:flaury/app/routes/app_pages.dart';
import 'package:flaury/app/theme/colors.dart';
import 'package:flaury/app/widgets/apptext.dart';
import 'package:flaury/app/widgets/space.dart';
import 'package:flaury/app/widgets/textfields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../controllers/newpass_controller.dart';

class NewpassView extends GetView<NewpassController> {
  const NewpassView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Get.offAll(Routes.SIGNIN);
          },
          icon: Icon(
            Icons.navigate_before,
            size: 50.h,
            color: AppColors.black,
          ),
        ),
        toolbarHeight: 70.h,
        title: BigAppText('Create New Password'),
        centerTitle: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: Container(
          padding: simPad(20, 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  'assets/images/14562381_5500659 1.png',
                  height: 300.h,
                ),
              ),
              vSpace(30),
              MedAppText(
                'Create Your New Password',
                textAlign: TextAlign.start,
                fontSize: 20,
              ),
              vSpace(30),
              AppTextFormField(
                hint: 'Enter New Password',
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Iconsax.eye_slash_copy,
                  ),
                ),
              ),
              vSpace(20),
              AppTextFormField(
                hint: 'Confirm New Password',
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Iconsax.eye_slash_copy,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
