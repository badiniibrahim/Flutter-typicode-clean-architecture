import 'package:get/get.dart';
import 'package:typicode/presentation/home/bindings/home_binding.dart';
import 'package:typicode/presentation/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
  ];
}
