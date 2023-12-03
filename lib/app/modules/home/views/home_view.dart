import 'package:flaury/app/constants/images.dart';
import 'package:flaury/app/theme/colors.dart';
import 'package:flaury/app/widgets/apptext.dart';
import 'package:flaury/app/widgets/caregories.dart';
import 'package:flaury/app/widgets/homeheader.dart';
import 'package:flaury/app/widgets/nearby.dart';
import 'package:flaury/app/widgets/nearbycontainer.dart';
import 'package:flaury/app/widgets/recommendation.dart';
import 'package:flaury/app/widgets/space.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Header
            const HomeHeader(),
            vSpace(30),
            // Categories
            Expanded(
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(
                  parent: BouncingScrollPhysics(),
                ),
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: simPad(0, 25),
                        child: BigAppText(
                          'Categories',
                        ),
                      ),
                      vSpace(15),
                      // Categories
                      SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        padding: simPad(0, 25),
                        scrollDirection: Axis.horizontal,
                        child: const Wrap(
                          spacing: 10,
                          children: [
                            Categories(
                              image: AppImages.brush,
                              data: 'Make-Up',
                            ),
                            Categories(
                              image: AppImages.clipper,
                              data: 'Haircut',
                            ),
                            Categories(
                              image: AppImages.hair,
                              data: 'Nail Technician ',
                            ),
                            Categories(
                              image: AppImages.brush,
                              data: 'Hair Stylist',
                            ),
                            Categories(
                              image: AppImages.brush,
                              data: 'Make-Up',
                            ),
                          ],
                        ),
                      ),
                      vSpace(30),
                      Padding(
                        padding: simPad(0, 25),
                        child: BigAppText(
                          'Nearby Salon',
                        ),
                      ),
                      vSpace(15),
                      // NearBy
                      SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        padding: simPad(0, 25),
                        scrollDirection: Axis.horizontal,
                        child: const Wrap(
                          spacing: 10,
                          children: [
                            NearBy(
                              data: 'All',
                              textcolor: AppColors.white,
                              color: AppColors.primary,
                            ),
                            NearBy(
                              data: 'Spa',
                              textcolor: AppColors.black,
                              color: AppColors.white,
                            ),
                            NearBy(
                              data: 'Manicure',
                              textcolor: AppColors.black,
                              color: AppColors.white,
                            ),
                            NearBy(
                              data: 'Skin Care',
                              textcolor: AppColors.black,
                              color: AppColors.white,
                            ),
                            NearBy(
                              data: 'Hair Dressing',
                              textcolor: AppColors.black,
                              color: AppColors.white,
                            ),
                          ],
                        ),
                      ),
                      vSpace(30),
                      Padding(
                        padding: simPad(0, 25),
                        child: const Column(
                          children: [
                            // Card Container
                            NearbyContainer(
                              category: 'FOR MEN & WOMEN',
                              title: 'Timeless Salon',
                              location: 'Dome Hills, Idan',
                              image: AppImages.nearbysalon,
                            ),
                            NearbyContainer(
                              category: 'FOR MEN & WOMEN',
                              title: 'Timeless Salon',
                              location: 'Dome Hills, Idan',
                              image: AppImages.nearbysalon,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: simPad(0, 25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            BigAppText('Recommendations'),
                            vSpace(10),
                            const SingleChildScrollView(
                              physics: ClampingScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              child: Wrap(
                                spacing: 20,
                                children: [
                                  Recommendation(
                                    image: AppImages.recommended,
                                    title: 'Make-Over',
                                    subtitle:
                                        'Experience Make-overs in a whole new level',
                                  ),
                                  Recommendation(
                                    image: AppImages.nearbysalon,
                                    title: 'Make-Over',
                                    subtitle:
                                        'Experience Make-overs in a whole new level',
                                  ),
                                  Recommendation(
                                    image: AppImages.recommended,
                                    title: 'Make-Over',
                                    subtitle:
                                        'Experience Make-overs in a whole new level',
                                  ),
                                  Recommendation(
                                    image: AppImages.nearbysalon,
                                    title: 'Make-Over',
                                    subtitle:
                                        'Experience Make-overs in a whole new level',
                                  ),
                                  Recommendation(
                                    image: AppImages.recommended,
                                    title: 'Make-Over',
                                    subtitle:
                                        'Experience Make-overs in a whole new level',
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
} 
