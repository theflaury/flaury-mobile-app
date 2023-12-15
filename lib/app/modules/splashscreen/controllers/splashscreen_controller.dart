import 'package:flaury/app/routes/app_pages.dart';
import 'package:get/get.dart';

class SplashscreenController extends GetxController {
  //TODO: Implement SplashscreenController

  final count = 0.obs;

  @override
  Future<void> onReady() async {
    await Future.delayed(const Duration(seconds: 5));

    Get.offAllNamed(Routes.ONBOARDING);

    super.onReady();
  }


  void increment() => count.value++;
}
