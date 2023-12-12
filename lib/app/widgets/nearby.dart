import 'package:flaury/app/theme/colors.dart';
import 'package:flaury/app/widgets/apptext.dart';
import 'package:flutter/material.dart';

class NearBy extends StatelessWidget {
  const NearBy({
    super.key,
    this.onTap,
    this.color,
    required this.data,
    this.textcolor,
  });

  final Function()? onTap;
  final Color? textcolor;
  final Color? color;
  final String data;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          width: 110.0,
          height: 50.0,
          decoration: BoxDecoration(
            color: color ?? AppColors.white,
            border: Border.all(
              color: AppColors.primary,
              width: 1.05,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(30),
            ),
          ),
          child: Center(
            child: SmallAppText(
              data,
              color: textcolor ?? AppColors.white,
            ),
          ),
        ));
  }
}
