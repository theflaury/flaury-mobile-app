import 'package:flaury/app/theme/colors.dart';
import 'package:flaury/app/widgets/apptext.dart';
import 'package:flaury/app/widgets/space.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({
    super.key,
    required this.btnicon,
    required this.title,
    required this.subTitle,
  });
  final IconData btnicon;
  final String title, subTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          context: context,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.h)),
          builder: (context) => Container(
            padding: simPad(30, 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MedAppText(
                  'Make Selection!',
                  fontWeight: FontWeight.bold,
                ),
                vSpace(10),
                SmallAppText(
                  'Select one of the options given below to reset your password',
                ),
                vSpace(10),
                Container(
                  padding: const EdgeInsets.all(30.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: AppColors.grey,
                  ),
                  child: Row(
                    children: [
                      Icon(
                        btnicon,
                        size: 60.0,
                      ),
                      hSpace(10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MedAppText(
                            title,
                          ),
                          SmallAppText(
                            subTitle,
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
      child: SmallAppText(
        'Forgot Password?',
        fontWeight: FontWeight.bold,
        color: AppColors.primary,
      ),
    );
  }
}
