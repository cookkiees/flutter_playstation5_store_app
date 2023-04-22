import 'package:get/get.dart';

class DetailController extends GetxController {
  var tabMenu = true.obs;

  void toggleTabMenu() {
    tabMenu.value = !tabMenu.value;
  }

  var tabLogo = true.obs;

  void toggleTabLogo() {
    tabLogo.value = !tabLogo.value;
  }

  var tabSettings = true.obs;

  void toggleTabSettings() {
    tabSettings.value = !tabSettings.value;
  }

  List<String> icons = [
    "assets/icons/mic.svg",
    "assets/icons/headset-jack.svg",
    "assets/icons/vec.svg",
  ];
  List<String> title = [
    "Built-In Microphone",
    "Headset Jack",
    "Motion Sensor",
  ];
}
