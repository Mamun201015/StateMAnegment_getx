import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_degine_1/app/modules/nav_view/controller/nav_controller.dart';

class Navview extends GetView<NavController> {
  const Navview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
      ]),
    );
  }
}
