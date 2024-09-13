import 'package:ecommercee/core/constant/AppRoutes.dart';
import 'package:ecommercee/core/serves/myservies.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyMiddleware extends GetMiddleware {
  MyServices myServices = Get.find();

  @override
  // TODO: implement priority
  int? get priority => 1;

  @override
  RouteSettings? redirect(String? route) {
    if (myServices.sharedPreferences!.getString("onboarding") == "1") {
      return const RouteSettings(name: Approutes.login);
    }
    return null;
  }
}
