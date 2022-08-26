
import 'package:demo_zmap/view/screens/buses_view.dart';
import 'package:demo_zmap/view/screens/favorite_view.dart';
import 'package:demo_zmap/view/screens/home_view.dart';
import 'package:demo_zmap/view/screens/hotels_view.dart';
import 'package:demo_zmap/view/screens/profile_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ControlViewModel extends GetxController {
  int _navigatorValue = 0;
  get navigatorValue => _navigatorValue;
  Widget currentScreen = HomeView() ;


  void changeSelectedValue(int selectedValue) {
    _navigatorValue = selectedValue;
    switch (selectedValue) {
      case 0:
        {
          currentScreen = HomeView();
          break;
        }

        case 1:
        {
          currentScreen = HotelsView();
          break;
        }
        case 2:
        {
          currentScreen = BusesView();
          break;
        }

      case 3:
        {
          currentScreen = FavoriteView();
          break;
        }
      case 4:
        {
          currentScreen = ProfileView();
          break;
        }
    }
    update();
  }
}
