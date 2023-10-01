import 'package:flaury/app/modules/splashscreen/bindings/splashscreen_binding.dart';
import 'package:flaury/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, _) {
          return GetMaterialApp(
            getPages: AppPages.routes,
            debugShowCheckedModeBanner: false,
            initialBinding: SplashscreenBinding(),
            initialRoute: Routes.SPLASHSCREEN,
          );
        });
  }
}
