import 'package:demo_zmap/core_view_model/view_model/auth_view_model.dart';
import 'package:demo_zmap/view/auth/login_view.dart';
import 'package:demo_zmap/view/widgets/custom_bottom.dart';
import 'package:demo_zmap/view/widgets/custom_text.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class RegisterView extends GetWidget<AuthViewModel> {
  // const RegisterView({Key? key}) : super(key: key);
  var dateController = TextEditingController();
  var genderController = DropdownButton();
  var gender = ['   Male', '   Female'];
  var passwordController = TextEditingController();
  bool passwordObscure = true;



  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  var _passwordVisible = false;
  String value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: GestureDetector(
            onTap: () {
              Get.off(LoginView());
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: 'Sign Up',
                        fontSize: 30,
                      ),
                    ],
                  ),
                  SizedBox(height: 30,),

                  Container(
                    child: TextFormField(
                      onSaved: (value) {
                        controller.name = value;
                      },
                      textInputAction: TextInputAction.next,
                      validator: (name) {
                        if (name == null || name.isEmpty)
                          return 'Please Enter your Name';
                        else if (name.length < 3) {
                          return 'Must be 3 at least';
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                        labelText: 'Full Name',
                        prefixIcon: Icon(
                          Icons.drive_file_rename_outline,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),


                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    onSaved: (value) {
                      controller.email = value;
                    },
                    validator: (email) =>
                        email != null && !EmailValidator.validate(email)
                            ? 'Enter a valid email'
                            : null,
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
                    height: 20,
                  ),
                  TextFormField(
                    onSaved: (value) {
                      controller.phoneNumber = value;
                    },
                    validator: (number) {
                      if (number == null || number.isEmpty)
                        return 'Please Enter The Number';
                      else if (number.length < 11) {
                        return ' Number Must be 11 ';
                      } else {
                        return null;
                      }
                    },
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      labelText: 'phone number',
                      prefixIcon: Icon(
                        Icons.phone,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
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
                  // TextFormField(
                  //   onSaved: (value) {
                  //     controller.password = value;
                  //   },
                  //   decoration: InputDecoration(
                  //       icon: Icon(Icons.lock),
                  //       labelText: "Password",
                  //       suffixIcon: IconButton(
                  //         icon: Icon(
                  //           _passwordVisible
                  //               ? Icons.visibility_off
                  //               : Icons.visibility,
                  //           color: Theme.of(context).primaryColorDark,
                  //         ),
                  //         onPressed: () {
                  //           setState(() {
                  //             _passwordVisible = !_passwordVisible;
                  //           });
                  //         },
                  //       )),
                  //   obscureText: !_passwordVisible,
                  //   validator: (String value) =>
                  //       value.trim().isEmpty ? "Password is require" : null,
                  // ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 60,
                    child: DropdownButtonHideUnderline(
                      child: DropdownButtonFormField<String>(
                        onSaved: (value) {
                          controller.gender = value;
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        isExpanded: true,
                        iconSize: 30,
                        value: value,
                        onChanged: (value) =>
                            setState(() => this.value = value),
                        items: gender.map((gen){
                          return DropdownMenuItem(
                            value: gen,
                            child: Text('$gen '),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    onSaved: (value) {
                      controller.dateOfBirth = value;
                    },
                    validator: (date) {
                      if (date == null || date.isEmpty)
                        return 'Please Enter Your Date Of Birth';
                      else {
                        return null;
                      }
                    },
                    textInputAction: TextInputAction.done,
                    onTap: () {
                      showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(1930),
                        lastDate: DateTime.parse('2022-05-03'),
                      ).then((value) {
                        dateController.text =
                            DateFormat.yMMMd().format(value);
                      });
                    },
                    controller: dateController,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      labelText: 'Date Of Birth',
                      prefixIcon: IconButton(
                        icon: Icon(
                          Icons.date_range,
                        ),
                        onPressed: () {},
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomButtom(
                    text: 'Sign Up',
                    onPressd: () {
                      _formKey.currentState.save();
                      if (_formKey.currentState.validate()) {
                        controller.createAccountWithEmailAndPassword();
                      }
                    },
                  ),
                  SizedBox(
                    height: 20,
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
