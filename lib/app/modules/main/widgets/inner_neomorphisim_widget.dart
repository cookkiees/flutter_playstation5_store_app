import 'package:flutter/material.dart';

class InnerNeomorphisimWidget extends StatelessWidget {
  const InnerNeomorphisimWidget({
    super.key,
    required this.child,
    required this.boxColor,
    required this.shadowColor,
    required this.shadowColor1,
    required this.colors,
    required this.height,
    required this.width,
  });

  final Widget child;
  final Color boxColor;
  final Color shadowColor;
  final Color shadowColor1;
  final List<Color> colors;
  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: height,
        width: width,
        padding: const EdgeInsets.only(left: 4, top: 2),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(color: boxColor, width: 2),
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: shadowColor,
              offset: const Offset(2, 2),
              blurRadius: 0,
              spreadRadius: 1,
            ),
            BoxShadow(
              color: shadowColor1,
              offset: const Offset(-0, -0),
              blurRadius: 0,
              spreadRadius: 2,
            ),
          ],
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: colors),
        ),
        child: child,
      ),
    );
  }
}
