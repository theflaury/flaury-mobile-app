import 'package:get/get.dart';

import '../controllers/newpass_controller.dart';

class NewpassBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NewpassController>(
      () => NewpassController(),
    );
  }
}
