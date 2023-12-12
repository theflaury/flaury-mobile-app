import 'package:flaury/app/routes/app_pages.dart';
import 'package:flaury/app/theme/colors.dart';
import 'package:flaury/app/widgets/apptext.dart';
import 'package:flaury/app/widgets/notificationwidget.dart';
import 'package:flaury/app/widgets/space.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../controllers/notifications_controller.dart';

class NotificationsView extends GetView<NotificationsController> {
  const NotificationsView({Key? key}) : super(key: key);
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
        title: BigAppText('Notifications'),
        centerTitle: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(
              decelerationRate: ScrollDecelerationRate.fast),
          child: Column(
            // Recent
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                ),
                color: Colors.transparent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        MedAppText(
                          "Recent",
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                        hSpace(5),
                        CircleAvatar(
                          radius: 12,
                          backgroundColor: AppColors.primary,
                          child: Center(
                            child: SmallAppText(
                              '10',
                              fontSize: 10,
                              color: AppColors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                    // Clear All
                    GestureDetector(
                      onTap: () {
                        // Handle "Clear All" action
                        print('Clear All tapped');
                      },
                      child: MedAppText(
                        "Clear All",
                        color: AppColors.primary,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              vSpace(20),
              // Notification container
              const NotficationWidget(
                title: 'Payment successful',
                subtitle: 'You have made a salon payment!',
              ),
              const NotficationWidget(
                title: 'Payment successful',
                subtitle: 'You have made a salon payment!',
              ),
              const NotficationWidget(
                title: 'Payment successful',
                subtitle: 'You have made a salon payment!',
              ),
              const NotficationWidget(
                title: 'Payment successful',
                subtitle: 'You have made a salon payment!',
              ),
              const NotficationWidget(
                title: 'Payment successful',
                subtitle: 'You have made a salon payment!',
              ),
              const NotficationWidget(
                title: 'Payment successful',
                subtitle: 'You have made a salon payment!',
              ),
              const NotficationWidget(
                title: 'Payment successful',
                subtitle: 'You have made a salon payment!',
              ),
              const NotficationWidget(
                title: 'Payment successful',
                subtitle: 'You have made a salon payment!',
              ),
              const NotficationWidget(
                title: 'Payment successful',
                subtitle: 'You have made a salon payment!',
              ),
              const NotficationWidget(
                title: 'Payment successful',
                subtitle: 'You have made a salon payment!',
              ),
              const NotficationWidget(
                title: 'Payment successful',
                subtitle: 'You have made a salon payment!',
              )
            ],
          ),
        ),
      ),
    );
  }
}
