import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_degine_1/app/modules/nav_view/controller/nav_controller.dart';

class Navview extends GetView<NavController> {
  const Navview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("NavScreen"),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        child: BottomNavigationBar(
            backgroundColor: Colors.pinkAccent,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.lightBlue,
            unselectedItemColor: Colors.black,
            showUnselectedLabels: true,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.card_travel), label: "Cart"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite), label: "Favorite"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "Profile"),
            ]),
      ),
    );
  }
}
