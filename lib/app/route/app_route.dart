part of 'app_pages.dart';
abstract class Routes {
  Routes._();
  static const splashscreen = _path.splashScreen;
  static const NavScreen = _path.NavScreen;
}

abstract class _path {
  _path._();
  static const splashScreen = "/splashScreen";
   static const NavScreen = "/navscreen";
}
