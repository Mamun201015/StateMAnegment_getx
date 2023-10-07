import 'package:get/get.dart';
import 'package:ui_degine_1/app/Signin_page/controller/Signin_controller.dart';

class SignInBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignInController>(() => SignInController());
  }
}
