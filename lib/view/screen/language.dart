import 'package:ecommercee/core/constant/AppRoutes.dart';
import 'package:ecommercee/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/localization/changelanguage.dart';
import '../widget/languge/languagecostomButton.dart';
import 'onboarding.dart';
class Mylanguage extends GetView<ChangeLanguage> {
  const Mylanguage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Text("1".tr),
          CustomButton(buttonText: "Ar",onPressed: (){
            controller.changeLanguage("ar");
            Get.offNamed(Approutes.OnBoarding);

            },),
          CustomButton(buttonText: "En",onPressed: (){
           controller.changeLanguage("en");
           Get.offNamed(Approutes.OnBoarding);

         },),
        ],),),
    );
  }
}
