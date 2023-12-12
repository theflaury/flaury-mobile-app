import 'package:flaury/app/theme/colors.dart';
import 'package:flaury/app/widgets/apptext.dart';
import 'package:flaury/app/widgets/space.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class NotficationWidget extends StatelessWidget {
  const NotficationWidget({
    super.key,
    required this.title,
    required this.subtitle,
  });

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Handle tap gesture here (e.g., navigate to another page)
        if (kDebugMode) {
          print('Notification container tapped!');
        }
      },
      //  main container
      child: Container(
        padding: simPad(5, 15),
        child: Center(
          child: Container(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 15,
            ),
            width: double.infinity,
            height: 80.h,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: AppColors.grey,
                style: BorderStyle.solid,
              ),
            ),
            // Inner container with the icon
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 60.w,
                  height: 60.h,
                  decoration: BoxDecoration(
                    color: AppColors.primarylight,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.transparent,
                      style: BorderStyle.solid,
                    ),
                  ),
                  child: const Icon(
                    Iconsax.notification,
                    color: AppColors.black,
                    size: 35,
                  ),
                ),
                hSpace(30),
                // header text and description
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 200.h,
                      child: BigAppText(
                        title,
                        fontSize: 20,
                        //fontWeight: FontWeight.w600,
                      ),
                    ),
                    vSpace(5),
                    SizedBox(
                      width: 220.h,
                      child: SmallAppText(
                        subtitle,
                        color: AppColors.grey,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
