//بسم الله الرحمن الرحيم

import 'package:demo_zmap/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomButtonSocial extends StatelessWidget {
  // const CustomButtonSocial({Key? key}) : super(key: key);
   String text;
   String imageName;
   Function onPress;

  CustomButtonSocial({
    this.text,
    this.imageName,
    this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey.shade100,
      ),
      child: FlatButton(
        onPressed: () {
          onPress();
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image.asset(imageName!),
            // SizedBox(
            //   width: 80,
            // ),
            CustomText(
              text: text,
            ),
          ],
        ),
      ),
    );
  }
}
