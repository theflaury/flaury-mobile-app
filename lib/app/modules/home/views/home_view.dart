import 'package:flaury/app/constants/images.dart';
import 'package:flaury/app/theme/colors.dart';
import 'package:flaury/app/widgets/apptext.dart';
import 'package:flaury/app/widgets/caregories.dart';
import 'package:flaury/app/widgets/homeheader.dart';
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
                      SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        padding: simPad(0, 25),
                        scrollDirection: Axis.horizontal,
                        child: const Wrap(
                          spacing: 10,
                          children: [
                            Categories(
                              image: AppImages.brush,
                              data: 'Paint',
                            ),
                            Categories(
                              image: AppImages.brush,
                              data: 'Paint',
                            ),
                            Categories(
                              image: AppImages.brush,
                              data: 'Paint',
                            ),
                            Categories(
                              image: AppImages.brush,
                              data: 'Paint',
                            ),
                            Categories(
                              image: AppImages.brush,
                              data: 'Paint',
                            ),
                          ],
                        ),
                      ),
                      MedAppText('Popular Services', fontSize: 20),
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
