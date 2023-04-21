import 'package:get/get.dart';
import '../modules/home/home_binding.dart';
import '../modules/home/home_screen.dart';
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
    GetPage(
      name: AppRouters.home,
      page: () => const HomeScreen(),
      binding: HomeBinding(),
    ),
  ];
}
