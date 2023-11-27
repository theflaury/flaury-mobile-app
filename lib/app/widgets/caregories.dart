import 'package:flaury/app/theme/colors.dart';
import 'package:flaury/app/widgets/apptext.dart';
import 'package:flaury/app/widgets/space.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Categories extends StatelessWidget {
  const Categories({
    super.key,
    this.onTap,
     required this.data, required this.image,
  });

  final Function()? onTap;
  final AssetImage? image;

  final String? data;

  @override
  Widget build(BuildContext context) {
    
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: AppColors.primarylight,
                border: Border.all(width: 20, color: AppColors.primarylight)),
            child: CircleAvatar(
            radius: 72.0,
            backgroundColor: Colors.transparent,
            backgroundImage: image ?? const AssetImage('assets/alucard.jpg'),
            )
          ),
          vSpace(10),
          SmallAppText(
            data ?? 'Categories',
          )
        ],
      ),
    );
  }
}
