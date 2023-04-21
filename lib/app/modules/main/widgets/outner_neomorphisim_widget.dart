import 'package:flutter/material.dart';

class OutnerNeomorphisimWidget extends StatelessWidget {
  const OutnerNeomorphisimWidget({
    super.key,
    required this.child,
    required this.boxColor,
    required this.shadowColor,
    required this.shadowColor1,
    required this.height,
    required this.width,
  });

  final Widget child;
  final Color boxColor;
  final Color shadowColor;
  final Color shadowColor1;
  final double height;
  final double width;

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
              offset: const Offset(4, 4),
              blurRadius: 1,
              spreadRadius: 1,
            ),
            BoxShadow(
              color: shadowColor1,
              offset: const Offset(-4, -4),
              blurRadius: 1,
              spreadRadius: 1,
            ),
          ],
        ),
        child: child,
      ),
    );
  }
}
