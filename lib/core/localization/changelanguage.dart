import 'dart:ui';

import 'package:ecommercee/core/serves/myservies.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constant/ThemData.dart';

class ChangeLanguage extends GetxController{

  late Locale language;
  MyServices myServices =Get.find();
  ThemeData appTheme=themeEnglish;
  changeLanguage(String language){

    Locale locale =Locale(language);
    myServices.sharedPreferences!.setString("lan", language);
    Locale(language);

    Get.updateLocale(locale);
    print(Locale(language));
  }
  @override
  void onInit() {
    String? sharedprefLanguage = myServices.sharedPreferences!.getString("lan");
    if (sharedprefLanguage == "ar") {
       appTheme=themeEnglish;
      language = const Locale("ar");
    } else if (sharedprefLanguage == "en") {
       appTheme=themeArabic;
      language = const Locale("en");
    } else {
       appTheme=themeEnglish;
      language = Locale(Get.deviceLocale!.languageCode);
    }
    super.onInit();
  }
}