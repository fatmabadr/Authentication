import 'package:ecommercee/core/constant/AppRoutes.dart';
import 'package:ecommercee/core/serves/myservies.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:path/path.dart';

import '../data/data_source/static/static.dart';

abstract class OnBoardingController extends GetxController{
  next();
  onPageChanged(int index);
}

class OnBoardingControllerImp extends OnBoardingController{
  int currentPage=0;
  late PageController pageController;
  MyServices myServices=Get.find();
  @override
  next() {
    if(currentPage==onbordingList.length-1){
      myServices.sharedPreferences!.setString("onboarding", "1") ;
      Get.offAllNamed(Approutes.login);
    }
    currentPage++;
    pageController.animateToPage(currentPage, duration: const Duration(milliseconds: 900), curve: Curves.easeInOut);
  }

  @override
  onPageChanged(int index) {
    currentPage = index;
    update();
  }
@override
  void onInit() {
   pageController=PageController();
    super.onInit();
  }

}