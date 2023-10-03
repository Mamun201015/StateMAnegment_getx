import 'package:get/get.dart';
import 'package:ui_degine_1/app/modules/splash_screen/controller/splash_controller.dart';

class Splashbindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashController>(() => SplashController());
  }
}
