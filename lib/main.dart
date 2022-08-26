//بسم الله الرحمن الرحيم
// اكرمنا يارب

import 'package:demo_zmap/helper/binding.dart';
import 'package:demo_zmap/theme/theme_manger.dart';
import 'package:demo_zmap/theme/themes_constants.dart';
import 'package:demo_zmap/view/auth/login_view.dart';
import 'package:demo_zmap/view/control_view.dart';
import 'package:demo_zmap/view/screens/on_boarding_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
void main() async{
  await GetStorage.init();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}
ThemeManger _themeManger = ThemeManger();

class _MyAppState extends State<MyApp> {

  final  introdata = GetStorage();
  @override
  void dispose() {
    _themeManger.removeListener(themelistner);
    super.dispose();
  }

  @override
  void initState() {
    _themeManger.addListener(themelistner);
    
    // TODO: implement initState
    super.initState();
    introdata.writeIfNull('displayed', false);
  }
  
  themelistner(){
    if(mounted){
      setState(() {

      });
    }

  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: Binding(),
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.dark,
      home: Scaffold(
        body:introdata.read("displayed") ? ControlView()  :OnboardingPage(),
      )
    );
  }
}
