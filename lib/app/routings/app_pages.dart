import 'package:get/get.dart';
import '../modules/main/main_screen.dart';
import '../modules/main/main_binding.dart';
import 'app_routers.dart';

class AppPages {
  static const initial = AppRouters.main;

  static final routes = [
    GetPage(
      name: AppRouters.main,
      page: () => const MainScreen(),
      binding: MainBinding(),
    ),
  ];
}
