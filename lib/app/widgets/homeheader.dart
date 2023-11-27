import 'package:flaury/app/theme/colors.dart';
import 'package:flaury/app/widgets/apptext.dart';
import 'package:flaury/app/widgets/space.dart';
import 'package:flaury/app/widgets/textfields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: simPad(40, 20),
      height: 220.0,
      decoration: const BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.vertical(
          bottom: Radius.elliptical(
            50.0,
            25.0,
          ),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BigAppText(
                    'Hello, Becca!',
                    color: AppColors.white,
                  ),
                  vSpace(10),
                  SmallAppText(
                    'What are you looking for today?',
                    color: AppColors.white,
                    fontSize: 15.h,
                  ),
                ],
              ),
              hSpace(50),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications,
                  color: AppColors.white,
                  size: 30.h,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.favorite,
                  color: AppColors.white,
                  size: 30.h,
                ),
              ),
            ],
          ),
          vSpace(10),
          // Search
          AppTextFormField(
            // change the color
            color: AppColors.white,
            hint: 'Search',
            prefixIcon: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search_rounded,
                color: AppColors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
