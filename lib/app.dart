import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:typicode/core/di/initial_binding.dart';
import 'package:typicode/routes/app_pages.dart';

class App extends StatelessWidget {
  const App({super.key, required this.initialRoute});
  final String initialRoute;

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      locale: Get.deviceLocale,
      fallbackLocale: const Locale("fr"),
      initialRoute: initialRoute,
      getPages: AppPages.routes,
      initialBinding: InitialBinding(),
    );
  }
}
