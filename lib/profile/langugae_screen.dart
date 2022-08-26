
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app_language.dart';

class LangScreen extends StatefulWidget {

  // const LangScreen({Key key}) : super(key: key);

  @override
  _LangScreenState createState() => _LangScreenState();
}

class _LangScreenState extends State<LangScreen> {
  String _selectedLang = 'en';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(20),
        child: Directionality(
          textDirection: _selectedLang == 'en'? TextDirection.ltr :TextDirection.rtl ,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'login'.tr,
                style: TextStyle(fontSize: 32),
              ),
              SizedBox(height: 50,),
              Text(
                'signUp'.tr,
                style: TextStyle(fontSize: 32),),
              GetBuilder<AppLanguage>(
                init: AppLanguage(),
                builder:(controller){
                  return DropdownButton<String>(
                    items:[
                      DropdownMenuItem(child: Text('en'),
                        value: 'en',
                      ),
                      DropdownMenuItem(child: Text('ar'),
                        value: 'ar',
                      ),
                    ],
                    value: controller.appLocal,
                    onChanged: (value){
                      controller.changeLanguage(value);
                      Get.updateLocale(Locale(value));
                    },
                  );
                } ,

              ),
            ],
          ),
        ),
      ),
    );
  }
}
