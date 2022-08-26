import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:demo_zmap/constance.dart';
import 'package:demo_zmap/core_view_model/service/firestore_user.dart';
import 'package:demo_zmap/view/control_view.dart';
import 'package:demo_zmap/view/widgets/custom_bottom.dart';
import 'package:email_validator/email_validator.dart';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:demo_zmap/profile/profile_logout.dart';

class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}


class _EditProfileState extends State<EditProfile> {
  var gender = ['   Male', '   Female'];
  var dateController = TextEditingController();
  var nameController = TextEditingController();
  var numberController = TextEditingController();
  var genderController = DropdownButton();

  @override
  void initState() {
    super.initState();
  }

  @override
  final formKey = GlobalKey<FormState>();
  bool isBottomSheetShown = false;
  IconData fabIcon = Icons.keyboard_arrow_down;
  String value;
  bool passwordObscure = true;

  Widget build(BuildContext context) {
    return GetBuilder<LogOut>(
      init: LogOut(),
      builder: (controller) => Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
                size: 30.0,
              ),
              onPressed: () {
                Get.to(ControlView());
              }),
          title: Text(
            'Edit Your Profile',
            style: TextStyle(
              color: primaryColor,
              fontSize: 20.0,
            ),
          ),
          centerTitle: true,
        ),
        body: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Name',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      controller: nameController,
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
                        labelText: 'Name',
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
                    height: 20.0,
                  ),
                  Text(
                    'Number',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      controller: numberController,
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
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Gender',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 60,
                      child: DropdownButtonHideUnderline(
                        child: DropdownButtonFormField<String>(
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
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Date Of Birth',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
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
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  CustomButtom(
                    text: 'Apply Changes',
                   onPressd:() async {
                  FirebaseFirestore.instance.collection('Users').doc(controller.userModel.userId).update({
                    "name":"${nameController.text}",
                    "phoneNumber ":"${numberController.text}",
                    "dateOfBirth ":"${dateController.text}",
                    "gender":"${value}",
                  });

                  final form = formKey.currentState;
                  if (form.validate()) {
                    print('Form valid');
                  }
                  formKey.currentState.save();
                  //await controller.updateCurrentUser();
                  Get.offAll(ControlView());
                },)
                  // Container(
                  //   height: 50,
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(
                  //       100.0,
                  //     ),
                  //   ),
                  //   clipBehavior: Clip.antiAliasWithSaveLayer,
                  //   width: double.infinity,
                  //   child: MaterialButton(
                  //     onPressed: () async {
                  //       FirebaseFirestore.instance.collection('Users').doc(controller.userModel.userId).update({
                  //         "name":"${nameController.text}",
                  //         "phoneNumber ":"${numberController.text}",
                  //         "dateOfBirth ":"${dateController.text}",
                  //         "gender":"${value}",
                  //       });
                  //
                  //       final form = formKey.currentState;
                  //       if (form.validate()) {
                  //         print('Form valid');
                  //       }
                  //       formKey.currentState.save();
                  //       //await controller.updateCurrentUser();
                  //       Get.offAll(ControlView());
                  //     },
                  //     color: Colors.blueGrey,
                  //     child: Text(
                  //       'Apply Changes',
                  //     ),
                  //     textColor: Colors.white,
                  //   ),
                  // ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     TextFormField(
                  //       decoration: InputDecoration(
                  //         labelText: 'city',
                  //         prefixIcon: Icon(
                  //           Icons.location_on_outlined,
                  //         ),
                  //         border: OutlineInputBorder(),
                  //       ),
                  //     ),
                  //     SizedBox(
                  //       width: 20.0,
                  //     ),
                  //     TextFormField(
                  //       decoration: InputDecoration(
                  //         labelText: 'region',
                  //         prefixIcon: Icon(
                  //           Icons.location_on_outlined,
                  //         ),
                  //         border: OutlineInputBorder(),
                  //       ),
                  //     ),
                  //   ],
                  // ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
    value: item,
    child: Text(
      item,
    ),
  );
}
