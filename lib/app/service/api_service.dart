import 'package:flutter_playstation5_store_app/app/modules/detail/detail_controller.dart';
import 'package:get/get.dart';

import '../modules/home/home_controller.dart';
import '../modules/main/main_controller.dart';

class ApiService extends GetConnect {}

class ApiServiceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ApiService());
    Get.put(MainController());
    Get.put(HomeController());
    Get.put(DetailController());
  }
}
