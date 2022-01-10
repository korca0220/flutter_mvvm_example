// ignore_for_file: constant_identifier_names
import 'package:flutter_mvvm_app/app/binding/home_binding.dart';
import 'package:flutter_mvvm_app/app/ui/home.dart';
import 'package:get/get.dart';

part './app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: Routes.Home,
      page: () => const Home(),
      binding: HomeBinding(),
    ),
  ];
}
