import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_degine_1/app/modules/splash_screen/controller/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());
    return const Scaffold(
      body: Center(
        child: Text("Splash Screen"),
        
      ),
    );
  }
}
