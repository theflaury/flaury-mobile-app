import 'package:flaury/app/constants/images.dart';
import 'package:flaury/app/widgets/apptext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import '../theme/colors.dart';
import 'space.dart';

class OtherSettings extends StatelessWidget {
  const OtherSettings(
      {super.key,
      required this.iconData,
      required this.title,
      required this.subtitle,
      this.height});

  final IconData iconData;
  final String title;
  final String subtitle;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: height?.h ?? 65.h,
        width: double.infinity,
        //padding: simPad(10, 10),
        decoration: const BoxDecoration(
          color: Colors.transparent,

          //borderRadius: BorderRadius.circular(20.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: simPad(5, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    iconData,
                    color: AppColors.black,
                    size: 30,
                  ),
                ],
              ),
            ),
            hSpace(20),
            SizedBox(
              width: 250.w,
              height: 80.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.values[5],
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MedAppText(
                    title,
                    color: AppColors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  SmallAppText(
                    '___________________________________',
                    color: AppColors.black,
                  ),
                  SmallAppText(
                    subtitle,
                    fontSize: 14.sp,
                  )
                ],
              ),
            ),
            const Spacer(),
            const Icon(
              Icons.navigate_next,
              color: AppColors.black,
              size: 40,
            )
          ],
        ),
      ),
    );
  }
}
