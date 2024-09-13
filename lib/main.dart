import 'dart:io';

import 'package:ecommercee/Binding.dart';
import 'package:ecommercee/core/serves/myservies.dart';
import 'package:ecommercee/routes.dart';
import 'package:ecommercee/view/screen/language.dart';
import 'package:ecommercee/view/screen/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'core/constant/color.dart';
import 'core/localization/changelanguage.dart';
import 'core/localization/translation.dart';
class PostHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  }
}

void main() async{
  HttpOverrides.global = new PostHttpOverrides();
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ChangeLanguage controller=Get.put(ChangeLanguage());
    return  GetMaterialApp(
      title: 'Flutter Demo',
      translations:MyTranslation(),
      locale: controller.language,
      theme: controller.appTheme,
      initialBinding: MyBinding(),
     // home: const Mylanguage(),
      getPages: routes,
      //routes:routes ,
    );
  }
}
