//import 'dart:math';

import 'package:demo_zmap/profile/utils.lang/local_storage/local_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AppLanguage extends GetxController
{
  var appLocal  = 'ar';
  @override
  void onInit()async {
    // TODO: implement onInit
    super.onInit();
    LocalStorage  localStorage  =  LocalStorage();

  appLocal = await localStorage.languageSelected==null?  'ar' : await localStorage.languageSelected;
  Get.updateLocale(Locale(appLocal));
  update();
  }

  void changeLanguage (String type)async
  {
    LocalStorage localStorage = LocalStorage();
    if(appLocal == type){
      return;
    }if(type == 'ar')
    {
      appLocal  = 'ar';
      localStorage.saveLanguageToDisc('ar');
    }else{
      appLocal  = 'en';
      localStorage.saveLanguageToDisc('en');
    }
    update();

  }
}