
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsapp/core/constant/themedata.dart';
import 'package:newsapp/core/services/services.dart';

class LocalController extends GetxController{
  Locale? language;
  Services services = Get.find();
   ThemeData appTheme = themeEnglish ;
  changeLange (String langCode){
    Locale locale = Locale(langCode);
    appTheme = langCode == 'ar' ? themeArabic : themeEnglish ;
    Get.changeTheme(appTheme);
    services.sharedPreferences.setString("lang", langCode);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? sharedPrefLang = services.sharedPreferences.getString("lang");
    if(sharedPrefLang == "ar"){
      language = const Locale("ar");
      appTheme = themeArabic ;
    }else if(sharedPrefLang == "en"){
      language = const Locale("en");
      appTheme = themeEnglish ;
    }else{
      language = Locale(Get.deviceLocale!.languageCode);
    }
    super.onInit();
  }
}