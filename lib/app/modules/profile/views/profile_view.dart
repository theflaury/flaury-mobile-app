import 'package:flaury/app/widgets/appbutton.dart';
import 'package:flaury/app/widgets/space.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
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
                    padding: simPad(20, 100),
                    child: AppElevatedButton(title: 'Help', onPressed: () {}),
                  )
                ],
              )
            ],
          )),
    );
  }
}
