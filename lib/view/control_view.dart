//بسم الله الرحمن الرحيم
import 'package:demo_zmap/core_view_model/view_model/auth_view_model.dart';
import 'package:demo_zmap/core_view_model/view_model/control_view_model.dart';
import 'package:demo_zmap/view/auth/login_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ControlView extends GetWidget<AuthViewModel> {


  @override
  Widget build(BuildContext context) {
    return  Obx(() {
      return (Get.find<AuthViewModel>().user == null)
          ? LoginView()
          : GetBuilder<ControlViewModel>(
        init: ControlViewModel(),
        builder: (controller) => Scaffold(
          body: controller.currentScreen,
          bottomNavigationBar: bottomNavigationBar(),
        ),
      );
    });
  }

  Widget bottomNavigationBar() {
    return GetBuilder<ControlViewModel>(
      init: Get.put(ControlViewModel()),
      builder: (controller) => BottomNavigationBar(
        items:[
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            label: ('Home'),
          ) ,

          BottomNavigationBarItem(
            icon: new Icon(Icons.hotel),
            label: ('Hotels'),
          ) ,

          BottomNavigationBarItem(
            icon: new Icon(Icons.directions_car),
            label: ('Buses'),
          ) ,

          BottomNavigationBarItem(
            icon: new Icon(Icons.favorite),
            label: ('Favorite'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.person),
            label: ('Profile'),
          )
        ],

        currentIndex: controller.navigatorValue,
        onTap: (index){
          controller.changeSelectedValue(index);
        },
        elevation: 0,
        selectedItemColor: Colors.black,
        unselectedItemColor:  Colors.black12,
        backgroundColor: Colors.grey,
      ),
    );
  }
}
