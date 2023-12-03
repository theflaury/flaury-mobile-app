import 'package:flaury/app/theme/colors.dart';
import 'package:flaury/app/widgets/apptext.dart';
import 'package:flaury/app/widgets/space.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Categories extends StatelessWidget {
  const Categories({
    super.key,
    this.onTap,
    required this.data,
    required this.image,
  });
  final Function()? onTap;
  final String image;
  final String data;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          CircleAvatar(
            radius: 40.r,
            backgroundColor: AppColors.primarylight,
            child: Image.asset(
              image,
              width: 40.w,
            ),
          ),
          vSpace(10),
          SmallAppText(
            data,
          ),
        ],
      ),
    );
  }
}
