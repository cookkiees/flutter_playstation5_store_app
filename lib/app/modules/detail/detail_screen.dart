import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../components/outner_neomorphisim_widget.dart';
import '../../utils/my_colors.dart';
import 'detail_controller.dart';
import 'widgets/detail_appbar_widget.dart';

class DetailScreen extends GetView<DetailController> {
  const DetailScreen({super.key});

  get ui => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.dark,
      appBar: const PreferredSize(
          preferredSize: Size(double.infinity, 70),
          child: DetailAppBarWidget()),
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            color: MyColors.dark,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 32),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                color: MyColors.lightBlue,
                alignment: Alignment.topCenter,
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                child: SingleChildScrollView(
                  physics: const NeverScrollableScrollPhysics(),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 2,
                            width: MediaQuery.of(context).size.width,
                          ),
                          SvgPicture.asset(
                            "assets/icons/dual-sense.svg",
                          ),
                          Positioned(
                            top: 80,
                            left: 10,
                            child: Image.asset(
                              "assets/images/Controller-1.png",
                              height: 300,
                            ),
                          ),
                          Positioned(
                            top: 350,
                            left: 60,
                            child: SvgPicture.asset(
                              "assets/images/slider_23.svg",
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 165,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 3,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 32),
                              child: Stack(
                                children: [
                                  OutnerNeomorphisimWidget(
                                    height: 160,
                                    width: 150,
                                    boxColor: MyColors.lightBlue,
                                    shadowColor: Colors.grey.shade300,
                                    shadowColor1: Colors.white38,
                                    child: Stack(
                                      children: [
                                        Image.asset(
                                            "assets/images/element.png"),
                                        Positioned(
                                          bottom: 0,
                                          child: Image.asset(
                                              "assets/images/element (1).png"),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 32,
                                            horizontal: 8,
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              SvgPicture.asset(
                                                  controller.icons[index]),
                                              Text(
                                                controller.title[index],
                                                style: const TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.transparent,
                                      foregroundColor: const Color(0xFF4187FF),
                                      shadowColor: Colors.transparent,
                                      minimumSize: const Size(150, 160),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: null,
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                      const SizedBox(height: 32),
                      Stack(
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF4187FF),
                              minimumSize: const Size(double.infinity, 60),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                            onPressed: () {},
                            child: const Padding(
                              padding: EdgeInsets.only(left: 100),
                              child: Text(
                                "Buy Now",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 60,
                            width: 120,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: const Color(0xFF2E70E2),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: const Text(
                              "\$70",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
