import 'package:flaury/app/routes/app_pages.dart';
import 'package:flaury/app/widgets/logout.dart';
import 'package:flaury/app/widgets/navbar.dart';
import 'package:flaury/app/widgets/otherset.dart';
import 'package:flaury/app/widgets/space.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import '../../../theme/colors.dart';
import '../../../widgets/apptext.dart';
import '../../../widgets/profilewidget.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  ProfileView({super.key});
  final RxInt currentIndex = 3.obs;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: simPad(10, 15),
          child: Column(
            children: [
              // Help
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: simPad(20, 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Help
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Get.toNamed(Routes.HELP);
                              },
                              child: Container(
                                width: 100.w,
                                height: 40.h,
                                padding: simPad(10, 10),
                                decoration: BoxDecoration(
                                  color: AppColors.primary,
                                  borderRadius: BorderRadius.circular(20.r),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    const Icon(
                                      Iconsax.messages_3_copy,
                                      color: AppColors.white,
                                    ),
                                    SmallAppText(
                                      'Help',
                                      color: AppColors.white,
                                      fontSize: 18.sp,
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        vSpace(20),
                        // Profile
                        Center(
                          child: Column(
                            children: [
                              // Users Image
                              GestureDetector(
                                child: Container(
                                    width: 70,
                                    height: 70,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: AppColors.grey,
                                    ),
                                    child: const Icon(
                                      Iconsax.user,
                                      size: 30,
                                      color: AppColors.greytext,
                                    )),
                              ),
                              vSpace(10),
                              // Username
                              BigAppText(
                                'Becca Adom',
                              ),
                              vSpace(10),
                              // Email
                              MedAppText(
                                'beccadom@mail.com',
                              ),
                            ],
                          ),
                        ),
                        vSpace(30),
                        // Other Setting Features
                        Column(
                          children: [
                            ProfileWidget(
                              onTap: () {},
                              iconData: Iconsax.setting_2_copy,
                              title: 'Settings',
                            ),
                            vSpace(15),
                            ProfileWidget(
                              onTap: () {
                                Get.toNamed(Routes.PAYMENT);
                              },
                              iconData: Iconsax.card_copy,
                              title: 'Payments',
                            ),
                            vSpace(15),
                            OtherSettings(
                              onTap: () {},
                              iconData: Iconsax.info_circle_copy,
                              title: 'About',
                              subtitle:
                                  'FAQ, Privacy Policy, Terms & Conditions',
                            ),
                            vSpace(15),
                            OtherSettings(
                              onTap: () {},
                              height: 90.h,
                              iconData: Iconsax.gift_copy,
                              title: 'Promotions',
                              subtitle:
                                  'Get promo codes and enjoy discount on your bookings.',
                            ),
                            vSpace(15),
                            ProfileWidget(
                              onTap: () {},
                              iconData: Icons.article_rounded,
                              title: 'Blog',
                            ),
                            vSpace(15),
                            LogOut(
                              onTap: () {},
                              iconData: Iconsax.logout_copy,
                              title: 'Log Out',
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBarWidget(
          onItemTapped: (index) {
            currentIndex.value = index;
            handleNavigation(index);
          },
          currentIndex: currentIndex.value,
        ),
      ),
    );
  }
}
