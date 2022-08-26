import 'package:get/get.dart';
import 'lang/arabic.dart';
import 'lang/english.dart';

class Translation extends Translations{
  @override

  Map<String, Map<String, String>> get keys => {
    'en' : en,
    'ar' : ar,
  };

}