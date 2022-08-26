//بسم الله الرحمن الرحيم

import 'package:demo_zmap/constance.dart';
import 'package:demo_zmap/core_view_model/view_model/auth_view_model.dart';
import 'package:demo_zmap/view/auth/register_view.dart';
import 'package:demo_zmap/view/auth/reset_password.dart';
import 'package:demo_zmap/view/widgets/custom_bottom.dart';
import 'package:demo_zmap/view/widgets/custom_text.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginView extends GetWidget<AuthViewModel> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool passwordObscure = true;
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: 'Welcome',
                        fontSize: 30,
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
                  SizedBox(
                    height: 10,
                  ),
                  CustomText(
                    text: 'Sign In To Continue',
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    height: 30,
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
                  TextFormField(
                    controller: passwordController,
                    onSaved: (value) {
                      controller.password = value;
                    },
                    validator: (password) {
                      if (password == null || password.isEmpty)
                        return 'Please Enter Password';
                      else if (password.length < 6) {
                        return 'Must be 6 at least';
                      } else {
                        return null;
                      }
                    },
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: passwordObscure,
                    decoration: InputDecoration(
                      labelText: 'password',
                      prefixIcon: Icon(
                        Icons.lock,
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(passwordObscure
                            ? Icons.visibility_off
                            : Icons.visibility),
                        onPressed: () {
                          setState(() {
                            passwordObscure = !passwordObscure;
                          });
                        },
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextButton(
                    onPressed: () {
                      Get.to(ResetPassword());

                    },
                    child: Text('Forgot Password?'),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CustomButtom(
                    text: 'Sign In',
                    onPressd: () {
                      _formKey.currentState.save();
                      if (_formKey.currentState.validate()) {
                        controller.signInWithEmailAndPassword();
                      }
                    },
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  CustomText(
                    text: '-OR-',
                    alignment: Alignment.center,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  GestureDetector(
                    child: Image.asset(
                      'assets/google2.png',
                      width: 250,
                      // height: 60,
                    ),
                    onTap: () {
                      controller.googleSignInMethod();
                    },
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  GestureDetector(
                    child: Image.asset(
                      'assets/fb.png',
                      width: 250,
                      // height: 60,
                    ),
                    onTap: () {
                      controller.signInWithFacebookAccount();
                    },
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

/// دا عك كدا بنمشي الكود بس
void setState(Null Function() param0) {}
