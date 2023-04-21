import 'package:get/get.dart';

class HomeController extends GetxController {
  var tabIndex = 0.obs;

  void changeTabIndex(int index) {
    tabIndex.value = index;
    update();
  }

  var favoritesList = [].obs;

  void toggleFavorite(int index) {
    if (favoritesList.contains(index)) {
      favoritesList.remove(index);
    } else {
      favoritesList.add(index);
    }
  }

  var tab = [].obs;

  void toggleTab(int index) {
    if (tab.contains(index)) {
      tab.remove(index);
    } else {
      tab.add(index);
    }
  }

  List<String> items = [
    "assets/images/ps 5-1.png",
    "assets/images/ps 5.png",
    "assets/images/Controller.png",
    "assets/images/Headset.png",
  ];
  List<String> sub = [
    "Playstation 5\nDigital Edition",
    "Playstation 5",
    "DualSense\nWireless Controller",
    "Wireless Headset",
  ];
  List<String> title = [
    "Game console",
    "Game console",
    "Gaming controller",
    "Audio and cominication",
  ];
}
