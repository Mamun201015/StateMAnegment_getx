import 'package:get/get.dart';
import 'package:ui_degine_1/app/modules/nav_view/controller/nav_controller.dart';

class NavBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NavController>(() => NavController());
  }
}
