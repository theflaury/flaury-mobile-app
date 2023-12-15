import 'package:flaury/app/constants/images.dart';
import 'package:flaury/app/theme/colors.dart';
import 'package:flaury/app/widgets/apptext.dart';
import 'package:flaury/app/widgets/chatwidget.dart';
import 'package:flaury/app/widgets/navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/chat_controller.dart';

class ChatView extends GetView<ChatController> {
  ChatView({super.key});
  final RxInt currentIndex = 2.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: BigAppText('Chat'),
        centerTitle: true,
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.white,
        toolbarHeight: 70.h,
        toolbarOpacity: 1.0,
      ),
      body: const SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              ChatWidget(
                title: 'Pella Tehilah',
                image: AppImages.chat,
                subtitle: 'I’ll be there in 5 minutes!',
              ),
              ChatWidget(
                title: 'Pella Tehilah',
                image: AppImages.chat,
                subtitle: 'I’ll be there in 5 minutes!',
              ),
              ChatWidget(
                title: 'Pella Tehilah',
                image: AppImages.chat,
                subtitle: 'I’ll be there in 5 minutes!',
              ),
              ChatWidget(
                title: 'Pella Tehilah',
                image: AppImages.chat,
                subtitle: 'I’ll be there in 5 minutes!',
              ),
              ChatWidget(
                title: 'Pella Tehilah',
                image: AppImages.chat,
                subtitle: 'I’ll be there in 5 minutes!',
              ),
              ChatWidget(
                title: 'Pella Tehilah',
                image: AppImages.chat,
                subtitle: 'I’ll be there in 5 minutes!',
              ),
              ChatWidget(
                title: 'Pella Tehilah',
                image: AppImages.chat,
                subtitle: 'I’ll be there in 5 minutes!',
              ),
              ChatWidget(
                title: 'Pella Tehilah',
                image: AppImages.chat,
                subtitle: 'I’ll be there in 5 minutes!',
              ),
              ChatWidget(
                title: 'Pella Tehilah',
                image: AppImages.chat,
                subtitle: 'I’ll be there in 5 minutes!',
              ),
              ChatWidget(
                title: 'Pella Tehilah',
                image: AppImages.chat,
                subtitle: 'I’ll be there in 5 minutes!',
              ),
              ChatWidget(
                title: 'Pella Tehilah',
                image: AppImages.chat,
                subtitle: 'I’ll be there in 5 minutes!',
              ),
              ChatWidget(
                title: 'Pella Tehilah',
                image: AppImages.chat,
                subtitle: 'I’ll be there in 5 minutes!',
              ),
              ChatWidget(
                title: 'Pella Tehilah',
                image: AppImages.chat,
                subtitle: 'I’ll be there in 5 minutes!',
              ),
            ],
          ),
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
