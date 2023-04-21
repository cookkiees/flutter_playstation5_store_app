import 'package:flutter/material.dart';

class BoxProductWidget extends StatelessWidget {
  const BoxProductWidget({
    super.key,
    required this.images,
    required this.title,
    required this.subtitle,
    required this.color,
  });

  final String images;
  final String title;
  final String subtitle;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: 200,
          width: 170,
          margin: const EdgeInsets.all(16),
          child: Image.asset(images),
        ),
        FittedBox(
          fit: BoxFit.cover,
          child: Container(
            margin: const EdgeInsets.only(left: 16, right: 16, bottom: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 18,
                    color: color,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
