import 'package:flutter/material.dart';

class AppLine extends StatelessWidget {
  final Color color;
  final double width;
  final double height;
  final double? borderRadius;

  const AppLine({
    super.key,
    this.color = Colors.grey,
    required this.width,
    this.height = 1.0,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: borderRadius == null
            ? null
            : BorderRadius.circular(borderRadius!),
      ),
    );
  }
}
