import 'package:get/get.dart';

import '../controllers/emailauth_controller.dart';

class EmailauthBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EmailauthController>(
      () => EmailauthController(),
    );
  }
}
