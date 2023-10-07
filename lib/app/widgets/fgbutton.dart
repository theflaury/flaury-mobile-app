import 'package:flaury/app/theme/colors.dart';
import 'package:flaury/app/widgets/apptext.dart';
import 'package:flaury/app/widgets/space.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FgButton extends StatelessWidget {
  const FgButton({
    super.key,
    required this.hint,
    required this.label,
    required this.icon,
    required this.bordercolor,
  });

  final String? hint;
  final String? label;
  final IconData? icon;
  final Color? bordercolor;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: simPad(10, 15),
        width: double.infinity,
        height: 105.h,
        decoration: BoxDecoration(
          color: AppColors.white,
          boxShadow: const [
            BoxShadow(
              color: AppColors.black,
              offset: Offset(
                0.1,
                2.0,
              ),
              blurRadius: 5.0,
            ),
          ],
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: bordercolor ?? AppColors.white,
            width: 1.5,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 60.w,
              height: 60.w,
              decoration: const BoxDecoration(
                color: AppColors.primarylight,
                shape: BoxShape.circle,
              ),
              child: Icon(
                icon,
                size: 35.h,
                color: AppColors.primary,
              ),
            ),
            hSpace(20),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SmallAppText(
                  hint ?? '',
                  color: AppColors.grey,
                ),
                vSpace(5),
                BigAppText(
                  label ?? '',
                  fontSize: 20.h,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
