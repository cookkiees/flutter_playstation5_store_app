import 'package:flutter/material.dart';
import 'package:flutter_playstation5_store_app/app/modules/home/home_controller.dart';
import 'package:flutter_playstation5_store_app/app/routings/app_routers.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../utils/my_colors.dart';
import '../../components/outner_neomorphisim_widget.dart';
import '../detail/detail_screen.dart';
import 'widgets/box_profuct_widget.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.lightBlue,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 1.3,
                  child: GridView.builder(
                    itemCount: 4,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 1 / 1.7,
                            mainAxisSpacing: 32,
                            crossAxisSpacing: 32),
                    itemBuilder: (ctx, i) {
                      return Obx(
                        () => GestureDetector(
                          onTap: () => controller.toggleTab(i),
                          onDoubleTap: () => Get.toNamed(AppRouters.detail),
                          child: controller.tab.contains(i)
                              ? Stack(
                                  children: [
                                    Container(
                                      height: 360,
                                      width: 190,
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      child: BoxProductWidget(
                                        color: Colors.white,
                                        images: controller.items[i],
                                        title: controller.title[i],
                                        subtitle: controller.sub[i],
                                      ),
                                    ),
                                    Positioned(
                                      left: 16,
                                      top: 16,
                                      child: InkWell(
                                        onTap: () =>
                                            controller.toggleFavorite(i),
                                        child: controller.favoritesList
                                                .contains(i)
                                            ? SvgPicture.asset(
                                                "assets/icons/like.svg",
                                                colorFilter:
                                                    const ColorFilter.mode(
                                                  MyColors.dark,
                                                  BlendMode.srcIn,
                                                ),
                                              )
                                            : SvgPicture.asset(
                                                "assets/icons/like.svg",
                                                colorFilter: ColorFilter.mode(
                                                  Colors.grey.shade300,
                                                  BlendMode.srcIn,
                                                ),
                                              ),
                                      ),
                                    ),
                                  ],
                                )
                              : Stack(
                                  children: [
                                    OutnerNeomorphisimWidget(
                                      height: 360,
                                      width: 190,
                                      boxColor: MyColors.lightBlue,
                                      shadowColor: Colors.grey.shade300,
                                      shadowColor1: Colors.white38,
                                      offset: const Offset(4, 4),
                                      offset1: const Offset(-4, -4),
                                      blurRadius: 3,
                                      blurRadius1: 3,
                                      spreadRadius: 1,
                                      spreadRadius1: 1,
                                      child: BoxProductWidget(
                                        color: Colors.blue,
                                        images: controller.items[i],
                                        title: controller.title[i],
                                        subtitle: controller.sub[i],
                                      ),
                                    ),
                                    Positioned(
                                      left: 16,
                                      top: 16,
                                      child: InkWell(
                                        onTap: () =>
                                            controller.toggleFavorite(i),
                                        child: controller.favoritesList
                                                .contains(i)
                                            ? SvgPicture.asset(
                                                "assets/icons/like.svg",
                                                colorFilter:
                                                    const ColorFilter.mode(
                                                  Colors.blue,
                                                  BlendMode.srcIn,
                                                ),
                                              )
                                            : SvgPicture.asset(
                                                "assets/icons/heart.svg",
                                                colorFilter: ColorFilter.mode(
                                                  Colors.grey.shade400,
                                                  BlendMode.srcIn,
                                                ),
                                              ),
                                      ),
                                    ),
                                  ],
                                ),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
