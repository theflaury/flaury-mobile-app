import 'package:flaury/app/routes/app_pages.dart';
import 'package:flaury/app/theme/colors.dart';
import 'package:flaury/app/widgets/apptext.dart';
import 'package:flaury/app/widgets/space.dart';
import 'package:flaury/app/widgets/textfields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class HelpHeader extends StatelessWidget {
  const HelpHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: simPad(50, 10),
      height: 172.h,
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.vertical(
          bottom: Radius.elliptical(
            50.r,
            25.r,
          ),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Icon(
                    Icons.navigate_before,
                    size: 50.h,
                    color: AppColors.white,
                  )),
              hSpace(20),
              Center(
                child: SizedBox(
                  width: 220.w,
                  child: BigAppText(
                    'How can we help you today?',
                    textAlign: TextAlign.center,
                    color: AppColors.white,
                  ),
                ),
              ),
              hSpace(40),
            ],
          ),
          vSpace(10),
        ],
      ),
    );
  }
}
