import 'package:flutter/material.dart';
import 'package:typicode/app.dart';
import 'package:typicode/initializer.dart';
import 'package:typicode/routes/app_pages.dart';

Future<void> main() async {
  await Initializer.init();

  final String initialRoute = await Routes.INITIAL;

  runApp(App(
    initialRoute: initialRoute,
  ));
}
