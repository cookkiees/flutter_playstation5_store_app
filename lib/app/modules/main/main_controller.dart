import 'package:get/get.dart';

class MainController extends GetxController {
  var tabIndex = 0;

  void changeTabIndex(index) {
    tabIndex = index;
    update();
  }

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
}
