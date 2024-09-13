import 'package:ecommercee/Controller/onBordingController.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import '../widget/onBoarding/castomButton.dart';
import '../widget/onBoarding/dotsController.dart';
import '../widget/onBoarding/pageSlider.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return const Scaffold(
      body: SafeArea(
          child: Column(children: [
        Expanded(flex: 4, child: CustomPageSlider()),
        Expanded(
            child: Column(
          children: [customDotsControlelr(), costumButton()],
        )),
      ])),
    );
  }
}
