import 'dart:convert';

import 'package:ecommercee/core/class/StatusRequest.dart';
import 'package:ecommercee/core/constant/AppRoutes.dart';
import 'package:ecommercee/core/functions/handllingResponse.dart';
import 'package:ecommercee/data/data_source/remote/RegesterData.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:path/path.dart';

abstract class RegisterController extends GetxController {
  register();
  goToLogin();
}

class RegisterControllerImp extends RegisterController {
  late TextEditingController username;
  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController phone;
  late StatusRequest statusRequest;
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  RegisterData registerData = RegisterData(Get.find());

  @override
  goToLogin() {
    Get.offNamed(Approutes.login);
  }

  @override
  register() async {
    var form_data = formState.currentState;
    if (form_data!.validate()) {
      statusRequest = StatusRequest.loading;
      var response = await registerData.postData(
          username.text, email.text, password.text, phone.text);

      //statusRequest = handllingResponse(response);
print(response);
print("+++++++++++");
      if (response['status']== 'success') {
        Get.offNamed(Approutes.Home);
      }

      else if (response==StatusRequest.failure) {
        Get.defaultDialog(
            title: "Error!", content: const Text("Failure"));
      }

else{
        Get.defaultDialog(
            title: "Error!", content: const Text("email or phone used before"));
      }
    }
    update();
  }

  @override
  void onInit() {
    username = TextEditingController();
    email = TextEditingController();
    password = TextEditingController();
    phone = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    username.dispose();
    password.dispose();
    phone.dispose();
    super.dispose();
  }
}
