import 'package:flaury/app/widgets/apptext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../theme/colors.dart';
import 'space.dart';

class LogOut extends StatelessWidget {
  const LogOut({
    super.key,
    required this.iconData,
    required this.title, required this.onTap,
  });

  final IconData iconData;
  final String title;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap(),
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
              color: AppColors.red,
              size: 30,
            ),
            hSpace(20),
            MedAppText(
              title,
              fontWeight: FontWeight.bold,
              color: AppColors.red,
            ),
          ],
        ),
      ),
    );
  }
}
