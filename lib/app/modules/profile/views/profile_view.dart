import 'package:flaury/app/widgets/appbutton.dart';
import 'package:flaury/app/widgets/navbar.dart';
import 'package:flaury/app/widgets/space.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../theme/colors.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  ProfileView({Key? key}) : super(key: key);
  final RxInt currentIndex = 3.obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: simPad(10, 20),
        child: Column(
          children: [
            // Help
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  color: AppColors.primary,
                  padding: simPad(20, 100),
                  child: AppElevatedButton(title: 'Help', onPressed: () {}),
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
    );
  }
}
