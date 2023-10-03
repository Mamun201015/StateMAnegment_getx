import 'package:get/get.dart';

import 'package:ui_degine_1/app/route/app_pages.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    nextpages();
    super.onInit();
  }

  nextpages() {
    Future.delayed(
      Duration(seconds: 5),
      () {
        Get.offAllNamed(Routes.navScreen);
      },
    );
  }
}
