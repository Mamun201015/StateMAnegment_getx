part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const splashscreen = _path.splashScreen;
  static const navScreen = _path.navScreen;
}

abstract class _path {
  _path._();
  static const splashScreen = "/";
  static const navScreen = "/navscreen";
}
