import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double fSize;
  final FontWeight fWeight;
  final Color fColor;
  const CustomText({
    Key? key,
    required this.text,
    this.fSize = 24,
    this.fWeight = FontWeight.bold,
    this.fColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: fColor,
        fontSize: fSize,
        fontWeight: fWeight,
      ),
    );
  }
}
