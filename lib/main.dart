import 'package:flaury/app/modules/splashscreen/bindings/splashscreen_binding.dart';
import 'package:flaury/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
      initialBinding: SplashscreenBinding(),
      initialRoute: Routes.SPLASHSCREEN,
    );
  }
}
