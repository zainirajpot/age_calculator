import 'package:flutter/material.dart';

class TextWidgets extends StatelessWidget {
  final Color textcolor;
  final String text;
  //final FontWeight hintfontWeight;
  final FontWeight textfontWeight;
  final double size;

  TextWidgets({
    // required this.hintfontWeight,
    required this.textfontWeight,
    required this.size,
    required this.text,
    required this.textcolor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          style: TextStyle(
            color: textcolor,
            fontWeight: textfontWeight,
            fontSize: size,
          ),
        ),
      ],
    );
  }
}
