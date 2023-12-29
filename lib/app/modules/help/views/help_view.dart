import 'package:flaury/app/modules/help/views/helpwidget.dart';
import 'package:flaury/app/widgets/space.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../theme/colors.dart';
import '../../../widgets/apptext.dart';
import '../../../widgets/helpheader.dart';
import '../../../widgets/nearby.dart';
import '../controllers/help_controller.dart';

class HelpView extends GetView<HelpController> {
  const HelpView({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            // Help Header
            const HelpHeader(),
            vSpace(10),
            Expanded(
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(
                  parent: BouncingScrollPhysics(),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: simPad(10, 25),
                      child: BigAppText(
                        'Top Questions',
                      ),
                    ),
                    // FAQs
                    SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      padding: simPad(10, 25),
                      scrollDirection: Axis.horizontal,
                      child: const Wrap(
                        spacing: 10,
                        children: [
                          NearBy(
                            data: 'Payment',
                            textcolor: AppColors.white,
                            color: AppColors.primary,
                          ),
                          NearBy(
                            data: 'Coupons',
                            textcolor: AppColors.black,
                            color: AppColors.white,
                          ),
                          NearBy(
                            data: 'Bookings',
                            textcolor: AppColors.black,
                            color: AppColors.white,
                          ),
                        ],
                      ),
                    ),
                    // Other Parts
                    SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      padding: simPad(10, 25),
                      child: Wrap(
                        runSpacing: 15.0,
                        spacing: 10.0,
                        children: [
                          HelpWidget(
                            title: 'How do I add a debit card?',
                            onTap: () {},
                          ),
                          HelpWidget(
                            title: 'How do I add a debit card?',
                            onTap: () {},
                          ),
                          HelpWidget(
                            title: 'How do I add a debit card?',
                            onTap: () {},
                          ),
                          HelpWidget(
                            title: 'How do I add a debit card?',
                            onTap: () {},
                          ),
                          HelpWidget(
                            title: 'How do I add a debit card?',
                            onTap: () {},
                          ),
                          HelpWidget(
                            title: 'How do I add a debit card?',
                            onTap: () {},
                          ),
                          HelpWidget(
                            title: 'How do I add a debit card?',
                            onTap: () {},
                          ),
                          HelpWidget(
                            title: 'How do I add a debit card?',
                            onTap: () {},
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
