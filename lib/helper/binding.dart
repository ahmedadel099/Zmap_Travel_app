//بسم الله الرحمن الرحيم

import 'package:demo_zmap/core_view_model/view_model/auth_view_model.dart';
import 'package:demo_zmap/core_view_model/view_model/bus_view_model.dart';
import 'package:demo_zmap/core_view_model/view_model/control_view_model.dart';
import 'package:demo_zmap/core_view_model/view_model/favorite_view_model.dart';
import 'package:demo_zmap/core_view_model/view_model/home_view_model.dart';
import 'package:demo_zmap/core_view_model/view_model/hotels_view_model.dart';
import 'package:demo_zmap/profile/about_us.dart';
import 'package:demo_zmap/view/screens/home_view.dart';
import 'package:get/get.dart';

class Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthViewModel());
    Get.lazyPut(() => ControlViewModel());
     Get.lazyPut(() => HomeViewModel());
     Get.lazyPut(() => HotelsViewModel());
     Get.lazyPut(() => BusesViewModel());
     Get.lazyPut(() => FavoriteViewModel());
  }
}
