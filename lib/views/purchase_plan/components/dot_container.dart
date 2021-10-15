import 'package:flutter/material.dart';

class DotContainer extends StatelessWidget {
  const DotContainer({Key? key, required this.width, required this.color})
      : super(key: key);

  final double? width;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(seconds: 1),
      margin: const EdgeInsets.only(right: 5),
      height: 6.0,
      width: width!,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }
}
