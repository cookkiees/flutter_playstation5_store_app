import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../../utils/my_colors.dart';
import '../main_controller.dart';
import 'inner_neomorphisim_widget.dart';
import '../../../components/outner_neomorphisim_widget.dart';

class DefaultAppbarWidget extends GetView<MainController> {
  const DefaultAppbarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: MyColors.lightBlue,
      leadingWidth: 90,
      toolbarHeight: 70,
      title: SvgPicture.asset(
        "assets/images/PS5 logo.svg",
        colorFilter: const ColorFilter.mode(MyColors.dark, BlendMode.srcIn),
      ),
      leading: Obx(
        () => GestureDetector(
          onTap: () {
            controller.toggleTabMenu();
          },
          child: controller.tabMenu.value
              ? OutnerNeomorphisimWidget(
                  height: 55,
                  width: 55,
                  boxColor: MyColors.lightBlue,
                  shadowColor: Colors.grey.shade300,
                  shadowColor1: Colors.white30,
                  child: SvgPicture.asset(
                    "assets/icons/Menu.svg",
                    colorFilter: const ColorFilter.mode(
                      MyColors.dark,
                      BlendMode.srcIn,
                    ),
                  ),
                )
              : InnerNeomorphisimWidget(
                  height: 55,
                  width: 55,
                  boxColor: MyColors.lightBlue,
                  shadowColor: Colors.grey,
                  shadowColor1: MyColors.lightBlue,
                  colors: const [
                    Color.fromARGB(255, 228, 235, 249),
                    MyColors.lightBlue,
                    Colors.white60,
                    Colors.white60,
                  ],
                  child: SvgPicture.asset(
                    "assets/icons/Menu.svg",
                    colorFilter: const ColorFilter.mode(
                      MyColors.dark,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
        ),
      ),
      actions: [
        Obx(
          () => Padding(
            padding: const EdgeInsets.only(right: 16),
            child: GestureDetector(
              onTap: () {
                controller.toggleTabSettings();
              },
              child: controller.tabSettings.value
                  ? OutnerNeomorphisimWidget(
                      height: 55,
                      width: 55,
                      boxColor: MyColors.lightBlue,
                      shadowColor: Colors.grey.shade300,
                      shadowColor1: Colors.white30,
                      child: SvgPicture.asset(
                        "assets/icons/Settings.svg",
                        colorFilter: const ColorFilter.mode(
                          MyColors.dark,
                          BlendMode.srcIn,
                        ),
                      ),
                    )
                  : InnerNeomorphisimWidget(
                      height: 55,
                      width: 55,
                      boxColor: MyColors.lightBlue,
                      shadowColor: Colors.grey,
                      shadowColor1: MyColors.lightBlue,
                      colors: const [
                        Color.fromARGB(255, 228, 235, 249),
                        MyColors.lightBlue,
                        Colors.white60,
                        Colors.white60,
                      ],
                      child: SvgPicture.asset(
                        "assets/icons/Settings.svg",
                        colorFilter: const ColorFilter.mode(
                          MyColors.dark,
                          BlendMode.srcIn,
                        ),
                      ),
                    ),
            ),
          ),
        ),
      ],
    );
  }
}
