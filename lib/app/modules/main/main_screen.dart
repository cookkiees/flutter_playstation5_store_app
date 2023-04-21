import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../config/size_config.dart';
import 'main_controller.dart';

class MainScreen extends GetView<MainController> {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container();
  }
}
