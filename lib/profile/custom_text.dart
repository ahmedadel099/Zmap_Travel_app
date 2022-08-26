//بسم الله الرحمن الرحيم

import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  // const CustomText({Key? key}) : super(key: key);
  final String text;
  final double fontSize;
  final Color color;
  final Alignment alignment;


  CustomText({
    this.text,
    this.fontSize=16,
    this.color= Colors.black,
    this.alignment= Alignment.topLeft, FontWeight fomtweight,

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      child: Text(
        text,
        style: TextStyle(
          color: color,
          fontSize: fontSize,
        ),
      ),
    );
  }
}
