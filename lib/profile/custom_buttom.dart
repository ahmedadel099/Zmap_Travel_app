import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  // const CustomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          100.0,
        ),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: MaterialButton(
        onPressed: () {},
        color: Colors.yellow,
        child: Text(
          'Edit Profile',
        ),
      ),
    );
  }
}
