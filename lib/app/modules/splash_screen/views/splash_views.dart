import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_degine_1/app/modules/splash_screen/controller/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage("assets/image/images5.png")),
            
            SizedBox(
              height: Get.width / 10,
            ),
            SizedBox(
              child: CircularProgressIndicator(
                strokeWidth: 5,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Loading.....",
               style: TextStyle(color: Colors.blue),
            )
          ],
        ),
      ),
    );
  }
}
