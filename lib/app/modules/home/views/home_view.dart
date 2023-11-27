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
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              // Header
              const HomeHeader(),
              vSpace(30),
              // Categories
              Container(
                padding: simPad(0, 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigAppText(
                      'Categories',
                    ),
                    vSpace(15),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Categories(
                          image: AssetImage('assets/images/Rectangle 15.png'),
                          data: 'Paint',
                        ),
                        Categories(
                          image: AssetImage('assets/images/Rectangle 15.png'),
                          data: 'Paint',
                        ),
                        Categories(
                          image: AssetImage('assets/images/Rectangle 15.png'),
                          data: 'Paint',
                        ),
                        Categories(
                          image: AssetImage('assets/images/Rectangle 15.png'),
                          data: 'Paint',
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
