import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText(
      {Key? key,
      required this.text,
      this.color = Colors.black,
      this.fontSize = 18,
      this.isBold = false,  this.textAlign = TextAlign.start})
      : super(key: key);

  final bool isBold;
  final String text;
  final double fontSize;
  final Color color;
  final TextAlign textAlign;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        color: color,

        fontSize: fontSize,
        fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
      ),
    );
  }
}
