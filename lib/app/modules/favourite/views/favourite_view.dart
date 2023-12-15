import 'package:flaury/app/constants/images.dart';
import 'package:flaury/app/routes/app_pages.dart';
import 'package:flaury/app/theme/colors.dart';
import 'package:flaury/app/widgets/apptext.dart';
import 'package:flaury/app/widgets/favouritewidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/favourite_controller.dart';

class FavouriteView extends GetView<FavouriteController> {
  const FavouriteView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Get.offAllNamed(Routes.HOME);
          },
          icon: Icon(
            Icons.navigate_before,
            size: 50.h,
            color: AppColors.black,
          ),
        ),
        toolbarHeight: 70.h,
        title: BigAppText('Favourites'),
        centerTitle: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: const SafeArea(
          child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            FavouriteWidget(
              title: 'Timeless Salon',
              subtitle: 'Dome Hills, Idan',
              image: AppImages.favourites,
            ),
            FavouriteWidget(
              title: 'Timeless Salon',
              subtitle: 'Dome Hills, Idan',
              image: AppImages.favourites,
            ),
            FavouriteWidget(
              title: 'Timeless Salon',
              subtitle: 'Dome Hills, Idan',
              image: AppImages.favourites,
            ),
            FavouriteWidget(
              title: 'Timeless Salon',
              subtitle: 'Dome Hills, Idan',
              image: AppImages.favourites,
            ),
            FavouriteWidget(
              title: 'Timeless Salon',
              subtitle: 'Dome Hills, Idan',
              image: AppImages.favourites,
            ),
            FavouriteWidget(
              title: 'Timeless Salon',
              subtitle: 'Dome Hills, Idan',
              image: AppImages.favourites,
            ),
            FavouriteWidget(
              title: 'Timeless Salon',
              subtitle: 'Dome Hills, Idan',
              image: AppImages.favourites,
            ),
            FavouriteWidget(
              title: 'Timeless Salon',
              subtitle: 'Dome Hills, Idan',
              image: AppImages.favourites,
            ),
            FavouriteWidget(
              title: 'Timeless Salon',
              subtitle: 'Dome Hills, Idan',
              image: AppImages.favourites,
            ),
            FavouriteWidget(
              title: 'Timeless Salon',
              subtitle: 'Dome Hills, Idan',
              image: AppImages.favourites,
            ),
            FavouriteWidget(
              title: 'Timeless Salon',
              subtitle: 'Dome Hills, Idan',
              image: AppImages.favourites,
            )
          ],
        ),
      )),
    );
  }
}
