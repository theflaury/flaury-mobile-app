import 'package:flaury/app/widgets/apptext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../theme/colors.dart';
import '../../../widgets/space.dart';

class HelpWidget extends StatelessWidget {
  const HelpWidget({
    super.key,
    required this.title,
    required this.onTap,
  });

  final String title;
 final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
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
            hSpace(20),
            MedAppText(
              title,
              fontWeight: FontWeight.bold,
              color: AppColors.black,
            ),
            const Spacer(),
            const Icon(
              Icons.keyboard_arrow_down_rounded,
              color: AppColors.black,
              size: 40,
            )
          ],
        ),
      ),
    );
  }
}
