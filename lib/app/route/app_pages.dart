import 'package:get/get_navigation/get_navigation.dart';
import 'package:ui_degine_1/app/modules/nav_view/bindings/nav_bindings.dart';
import 'package:ui_degine_1/app/modules/nav_view/view/nav_view.dart';
import 'package:ui_degine_1/app/modules/splash_screen/bindings/splash_bindings.dart';
import 'package:ui_degine_1/app/modules/splash_screen/views/splash_views.dart';
part 'app_route.dart';

class AppPages {
  static const initialpages = Routes.splashscreen;
  static final pages = [
    GetPage(
        name: _path.splashScreen,
        page: () => const SplashView(),
        binding: Splashbindings()),
    GetPage(
        name: _path.navScreen,
        page: () => const Navview(),
        binding: NavBindings())
  ];
}
