import 'package:flutter_playstation5_store_app/app/modules/home/home_controller.dart';
import 'package:get/get.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(HomeController());
  }
}
