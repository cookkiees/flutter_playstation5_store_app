import 'package:flutter_playstation5_store_app/app/modules/home/home_controller.dart';
import 'package:get/get.dart';

import 'main_controller.dart';

class MainBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(MainController());
    Get.put(HomeController());
  }
}
