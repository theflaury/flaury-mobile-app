import 'package:flaury/app/widgets/apptext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../theme/colors.dart';
import 'space.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({
    super.key,
    required this.iconData,
    required this.title,
  });

  final IconData iconData;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 50.h,
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
            Icon(
              iconData,
              color: AppColors.black,
              size: 30,
            ),
            hSpace(20),
            MedAppText(
              title,
              fontWeight: FontWeight.bold,
              color: AppColors.black,
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
