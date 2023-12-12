import 'package:flaury/app/theme/colors.dart';
import 'package:flaury/app/widgets/apptext.dart';
import 'package:flaury/app/widgets/space.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class ChatWidget extends StatelessWidget {
  const ChatWidget({
    super.key,
    required this.title,
    required this.subtitle,
    required this.image,
  });

  final String title;
  final String subtitle;
  final String image;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Handle tap gesture here (e.g., navigate to another page)
        if (kDebugMode) {
          print('Chat container tapped!');
        }
      },
      child: Center(
        child: Container(
          padding: simPad(0, 20),
          width: double.infinity,
          height: 70.h,
          decoration: const BoxDecoration(
            color: AppColors.white,
          ),
          // Inner container with the icon
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 50.w,
                height: 50.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.transparent,
                  image: DecorationImage(
                      image: AssetImage(image), fit: BoxFit.cover),
                ),
              ),
              hSpace(10),
              // header text and description
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 220.h,
                    child: BigAppText(
                      title,
                      fontSize: 20,
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
              hSpace(10),
              const Row(
                children: [
                  Icon(
                    Iconsax.direct_inbox,
                    //Iconsax.direct_inbox_copy,
                    color: AppColors.primary,
                    size: 25,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
