//بسم الله الرحمن الرحيم

import 'package:demo_zmap/core_view_model/view_model/auth_view_model.dart';
import 'package:demo_zmap/view/auth/login_view.dart';
import 'package:demo_zmap/view/auth/register_view.dart';
import 'package:demo_zmap/view/auth/verification.dart';
import 'package:demo_zmap/view/widgets/custom_bottom.dart';
import 'package:demo_zmap/view/widgets/custom_text.dart';
import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constance.dart';

class ResetPassword extends GetWidget<AuthViewModel> {
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
                    text: 'Reset Password',
                    fontSize: 28,
                    alignment: Alignment.center,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomText(
                    text: 'Enter your email address below ',
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
                  TextFormField(
                    validator: (email) =>
                        email != null && !EmailValidator.validate(email)
                            ? 'Enter a valid email'
                            : null,
                    onSaved: (value) {
                      controller.email = value;
                    },
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: 'Email address',
                      prefixIcon: Icon(
                        Icons.email,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  CustomButtom(
                    text: 'Reset Password',
                    onPressd: () async {
                      await FirebaseAuth.instance
                          .sendPasswordResetEmail(email: controller.email)
                          .then((value) {
                        Get.to(Verification());
                      });
                    },
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                        text: "Don't have an account ?",
                        fontSize: 18,
                        alignment: Alignment.center,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(RegisterView());
                        },
                        child: CustomText(
                          text: 'Sign Up',
                          fontSize: 18,
                          color: primaryColor,
                        ),
                      ),
                    ],
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
