import 'package:flutter/material.dart';

class KText extends StatelessWidget {
  const KText({
    super.key,
    required this.titleText,
    this.fontsize = 16,
    this.fontWeight = FontWeight.normal,
    this.color = Colors.black,
  });
  final String titleText;
  final double fontsize;
  final FontWeight fontWeight;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Text(titleText,
        style: TextStyle(
          fontSize: fontsize,
          fontWeight: FontWeight.bold,
          color: color,
        ));
  }
}
