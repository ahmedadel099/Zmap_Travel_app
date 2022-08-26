//بسم الله الرحمن الرحيم

import 'package:demo_zmap/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  // const CustomTextFormField({Key? key}) : super(key: key);
   String text;
   String hint;
   Function onSave;
   Function validator;

  CustomTextFormField({
    this.text,
    this.hint,
    this.onSave,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CustomText(
            text: text,
            fontSize: 14,
            color: Colors.grey.shade900,
          ),
          TextFormField(
            onSaved: (s) {
              onSave(s);
            },
            validator: (s) {
              validator(s);
            },
            decoration: InputDecoration(
              hintText: hint,
              hintStyle: TextStyle(
                color: Colors.black,
              ),
              fillColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
