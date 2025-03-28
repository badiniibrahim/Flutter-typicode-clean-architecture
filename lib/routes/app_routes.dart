part of 'app_pages.dart';

abstract class Routes {
  Routes._();

  static const HOME = _Paths.HOME;

  static Future<String> get INITIAL async {
    return HOME;
  }
}

abstract class _Paths {
  static const HOME = '/home';
}
