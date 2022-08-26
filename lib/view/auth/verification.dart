//بسم الله الرحمن الرحيم

import 'package:demo_zmap/core_view_model/view_model/auth_view_model.dart';
import 'package:demo_zmap/view/auth/login_view.dart';
import 'package:demo_zmap/view/auth/register_view.dart';
import 'package:demo_zmap/view/widgets/custom_bottom.dart';
import 'package:demo_zmap/view/widgets/custom_text.dart';
import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constance.dart';

class Verification extends GetWidget<AuthViewModel> {
  // const LoginScreen({Key? key}) : super(key: key);
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Get.offAll(LoginView());
          },
        ),
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(
            top: 60,
            right: 20,
            left: 20,
          ),
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  CustomText(
                    text: 'verification sent !',
                    fontSize: 28,
                    alignment: Alignment.center,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomText(
                    text: 'please check your email ',
                    fontSize: 18,
                    color: Colors.grey[400],
                    alignment: Alignment.center,
                  ),
                  CustomText(
                    text: 'to reset password',
                    fontSize: 18,
                    color: Colors.grey[400],
                    alignment: Alignment.center,
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  CustomButtom(
                    text: 'Done',
                    onPressd: ()  {
                      Get.to(LoginView());
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
