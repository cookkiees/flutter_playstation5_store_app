import 'package:flutter/material.dart';

class OutnerNeomorphisimWidget extends StatelessWidget {
  OutnerNeomorphisimWidget({
    super.key,
    required this.child,
    required this.boxColor,
    required this.shadowColor,
    required this.shadowColor1,
    required this.height,
    required this.width,
    this.offset = const Offset(4, 4),
    this.blurRadius = 1,
    this.spreadRadius = 1,
    this.offset1 = const Offset(-4, -4),
    this.blurRadius1 = 1,
    this.spreadRadius1 = 1,
  });

  final Widget child;
  final Color boxColor;
  final Color shadowColor;
  final Color shadowColor1;
  final double height;
  final double width;
  double blurRadius;
  double spreadRadius;
  double blurRadius1;
  double spreadRadius1;
  Offset offset;
  Offset offset1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: height,
        width: width,
        padding: const EdgeInsets.only(left: 2, top: 2),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: boxColor,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: shadowColor,
              offset: offset,
              blurRadius: blurRadius,
              spreadRadius: spreadRadius,
            ),
            BoxShadow(
              color: shadowColor1,
              offset: offset1,
              blurRadius: blurRadius1,
              spreadRadius: spreadRadius1,
            ),
          ],
        ),
        child: child,
      ),
    );
  }
}
