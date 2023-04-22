import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../components/outner_neomorphisim_widget.dart';
import '../../../utils/my_colors.dart';
import '../../main/widgets/inner_neomorphisim_widget.dart';
import '../detail_controller.dart';

class DetailAppBarWidget extends GetView<DetailController> {
  const DetailAppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: MyColors.dark,
      leadingWidth: 90,
      toolbarHeight: 70,
      title: Obx(
        () => GestureDetector(
          onTap: () {
            controller.toggleTabLogo();
          },
          child: SvgPicture.asset(
            "assets/images/PS5 logo.svg",
            colorFilter: controller.tabLogo.value
                ? const ColorFilter.mode(MyColors.lightBlue, BlendMode.srcIn)
                : const ColorFilter.mode(Colors.blue, BlendMode.srcIn),
          ),
        ),
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
                  boxColor: MyColors.dark,
                  shadowColor: Colors.black54,
                  shadowColor1: MyColors.dark,
                  child: SvgPicture.asset(
                    "assets/icons/Menu.svg",
                    colorFilter: const ColorFilter.mode(
                      MyColors.lightBlue,
                      BlendMode.srcIn,
                    ),
                  ),
                )
              : InnerNeomorphisimWidget(
                  height: 55,
                  width: 55,
                  boxColor: MyColors.dark,
                  shadowColor: Colors.black,
                  shadowColor1: MyColors.dark,
                  colors: const [
                    Color.fromRGBO(33, 38, 46, 1),
                    Color.fromRGBO(33, 38, 46, 1),
                    Color.fromRGBO(33, 38, 46, 1),
                    Color.fromRGBO(33, 38, 46, 1),
                  ],
                  child: SvgPicture.asset(
                    "assets/icons/Menu.svg",
                    colorFilter: const ColorFilter.mode(
                      MyColors.lightBlue,
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
                      boxColor: MyColors.dark,
                      shadowColor: Colors.black54,
                      shadowColor1: MyColors.dark,
                      child: SvgPicture.asset(
                        "assets/icons/Settings.svg",
                        colorFilter: const ColorFilter.mode(
                          MyColors.lightBlue,
                          BlendMode.srcIn,
                        ),
                      ),
                    )
                  : InnerNeomorphisimWidget(
                      height: 55,
                      width: 55,
                      boxColor: MyColors.dark,
                      shadowColor: Colors.black,
                      shadowColor1: MyColors.dark,
                      colors: const [
                        Color.fromRGBO(33, 38, 46, 1),
                        Color.fromRGBO(33, 38, 46, 1),
                        Color.fromRGBO(33, 38, 46, 1),
                        Color.fromRGBO(33, 38, 46, 1),
                      ],
                      child: SvgPicture.asset(
                        "assets/icons/Settings.svg",
                        colorFilter: const ColorFilter.mode(
                          MyColors.lightBlue,
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
