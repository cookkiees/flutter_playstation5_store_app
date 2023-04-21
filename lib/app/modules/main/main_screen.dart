import 'package:flutter/material.dart';
import 'package:flutter_playstation5_store_app/app/modules/home/home_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../utils/my_colors.dart';
import 'main_controller.dart';
import 'widgets/default_appbar_widget.dart';
import 'widgets/inner_neomorphisim_widget.dart';
import '../../components/outner_neomorphisim_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration.zero, () {});
    return GetBuilder<MainController>(
      builder: (controller) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: const PreferredSize(
              preferredSize: Size(double.infinity, 60),
              child: DefaultAppbarWidget()),
          body: IndexedStack(
            index: controller.tabIndex,
            children: [
              const HomeScreen(),
              Container(),
              Container(),
              Container(),
            ],
          ),
          bottomNavigationBar: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Theme(
              data: ThemeData(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
              ),
              child: BottomNavigationBar(
                currentIndex: controller.tabIndex,
                selectedItemColor: MyColors.dark,
                unselectedItemColor: Colors.black,
                onTap: controller.changeTabIndex,
                backgroundColor: MyColors.dark,
                type: BottomNavigationBarType.fixed,
                selectedFontSize: 12,
                showSelectedLabels: false,
                showUnselectedLabels: false,
                useLegacyColorScheme: false,
                elevation: 0,
                items: [
                  BottomNavigationBarItem(
                    icon: controller.tabIndex == 0
                        ? InnerNeomorphisimWidget(
                            height: 55,
                            width: 55,
                            boxColor: MyColors.dark,
                            shadowColor: Colors.black54,
                            shadowColor1: MyColors.dark,
                            colors: const [
                              Color.fromRGBO(33, 38, 46, 1),
                              Color.fromRGBO(33, 38, 46, 1),
                              Color.fromRGBO(33, 38, 46, 1),
                              Color.fromRGBO(33, 38, 46, 1),
                            ],
                            child: SvgPicture.asset(
                              "assets/icons/Home.svg",
                              colorFilter: const ColorFilter.mode(
                                Colors.blue,
                                BlendMode.srcIn,
                              ),
                            ),
                          )
                        : OutnerNeomorphisimWidget(
                            height: 55,
                            width: 55,
                            boxColor: MyColors.dark,
                            shadowColor: Colors.black54,
                            shadowColor1: MyColors.dark,
                            child: SvgPicture.asset(
                              "assets/icons/Home.svg",
                              colorFilter: const ColorFilter.mode(
                                Colors.white,
                                BlendMode.srcIn,
                              ),
                            ),
                          ),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: controller.tabIndex == 1
                        ? InnerNeomorphisimWidget(
                            height: 55,
                            width: 55,
                            boxColor: MyColors.dark,
                            shadowColor: Colors.black54,
                            shadowColor1: MyColors.dark,
                            colors: const [
                              Color.fromRGBO(33, 38, 46, 1),
                              Color.fromRGBO(33, 38, 46, 1),
                              Color.fromRGBO(33, 38, 46, 1),
                              Color.fromRGBO(33, 38, 46, 1),
                            ],
                            child: SvgPicture.asset(
                              "assets/icons/Search.svg",
                              colorFilter: const ColorFilter.mode(
                                Colors.blue,
                                BlendMode.srcIn,
                              ),
                            ),
                          )
                        : OutnerNeomorphisimWidget(
                            height: 55,
                            width: 55,
                            boxColor: MyColors.dark,
                            shadowColor: Colors.black54,
                            shadowColor1: MyColors.dark,
                            child: SvgPicture.asset(
                              "assets/icons/Search.svg",
                              colorFilter: const ColorFilter.mode(
                                Colors.white,
                                BlendMode.srcIn,
                              ),
                            ),
                          ),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: controller.tabIndex == 2
                        ? InnerNeomorphisimWidget(
                            height: 55,
                            width: 55,
                            boxColor: MyColors.dark,
                            shadowColor: Colors.black54,
                            shadowColor1: MyColors.dark,
                            colors: const [
                              Color.fromRGBO(33, 38, 46, 1),
                              Color.fromRGBO(33, 38, 46, 1),
                              Color.fromRGBO(33, 38, 46, 1),
                              Color.fromRGBO(33, 38, 46, 1),
                            ],
                            child: SvgPicture.asset(
                              "assets/icons/Profile.svg",
                              colorFilter: const ColorFilter.mode(
                                Colors.blue,
                                BlendMode.srcIn,
                              ),
                            ),
                          )
                        : OutnerNeomorphisimWidget(
                            height: 55,
                            width: 55,
                            boxColor: MyColors.dark,
                            shadowColor: Colors.black54,
                            shadowColor1: MyColors.dark,
                            child: SvgPicture.asset(
                              "assets/icons/Profile.svg",
                              colorFilter: const ColorFilter.mode(
                                Colors.white,
                                BlendMode.srcIn,
                              ),
                            ),
                          ),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: controller.tabIndex == 3
                        ? InnerNeomorphisimWidget(
                            height: 55,
                            width: 55,
                            boxColor: MyColors.dark,
                            shadowColor: Colors.black54,
                            shadowColor1: MyColors.dark,
                            colors: const [
                              Color.fromRGBO(33, 38, 46, 1),
                              Color.fromRGBO(33, 38, 46, 1),
                              Color.fromRGBO(33, 38, 46, 1),
                              Color.fromRGBO(33, 38, 46, 1),
                            ],
                            child: SvgPicture.asset(
                              "assets/icons/Shop.svg",
                              colorFilter: const ColorFilter.mode(
                                Colors.blue,
                                BlendMode.srcIn,
                              ),
                            ),
                          )
                        : OutnerNeomorphisimWidget(
                            height: 55,
                            width: 55,
                            boxColor: MyColors.dark,
                            shadowColor: Colors.black54,
                            shadowColor1: MyColors.dark,
                            child: SvgPicture.asset(
                              "assets/icons/Shop.svg",
                              colorFilter: const ColorFilter.mode(
                                Colors.white,
                                BlendMode.srcIn,
                              ),
                            ),
                          ),
                    label: '',
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
