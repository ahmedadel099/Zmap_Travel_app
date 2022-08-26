import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListCustomText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Alignment alignment;
  final int maxLine;
  final FontWeight fontWeight;
  final TextAlign textAlign;

  ListCustomText({
    this.text = '',
    this.fontSize = 14.0,
    this.alignment = Alignment.topLeft,
    this.maxLine = 2,
    this.fontWeight = FontWeight.w700,
    this.textAlign = TextAlign.left,

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      child: Text(
        text,
        style: TextStyle(
          fontWeight: fontWeight,
          fontSize:fontSize,
        ),
        maxLines: maxLine,
        textAlign: textAlign,
      ),
    );
  }
}

// Container(
// alignment: Alignment.centerLeft,
// child: Text(
// "${place["name"]}",
// style: TextStyle(
// fontWeight: FontWeight.w700,
// fontSize: 14.0,
// ),
// maxLines: 2,
// textAlign: TextAlign.left,
// ),
// ),
