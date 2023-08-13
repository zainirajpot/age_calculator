import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final Widget child;
  final double height;
  final double width;
  final double? bottomLeftRadius;
  final double? bottomRightRadius;
  final Color colors;

  CustomContainer({
    required this.child,
    required this.height,
    required this.width,
    required this.colors,
    this.bottomLeftRadius,
    this.bottomRightRadius,
  });

  @override
  Widget build(BuildContext context) {
    BorderRadiusGeometry borderRadius = BorderRadius.only(
      topLeft: Radius.circular(12),
      topRight: Radius.circular(12),
    );

    if (bottomLeftRadius != null || bottomRightRadius != null) {
      borderRadius = BorderRadius.only(
        topLeft: Radius.circular(12),
        topRight: Radius.circular(12),
        bottomLeft: Radius.circular(bottomLeftRadius ?? 0),
        bottomRight: Radius.circular(bottomRightRadius ?? 0),
      );
    }

    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: colors,
        borderRadius: borderRadius,
      ),
      child: child,
    );
  }
}
