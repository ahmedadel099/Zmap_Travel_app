//بسم الله الرحمن الرحيم

import 'package:demo_zmap/constance.dart';
import 'package:demo_zmap/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  // const CustomButtom({Key? key}) : super(key: key);
  final String text;
  final Function onPressd;

  CustomButtom({
    this.text,
    this.onPressd
  });

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.all(18),
      onPressed: (){
        onPressd();
      },
      color: primaryColor,
      child: CustomText(
        text: text,
        alignment: Alignment.center,
        color: Colors.white,
      ),
    );
  }
}
