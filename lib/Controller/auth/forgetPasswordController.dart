import 'package:ecommercee/core/constant/AppRoutes.dart';
import 'package:ecommercee/core/functions/handllingResponse.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/class/StatusRequest.dart';
import '../../data/data_source/remote/forgetpasswordData.dart';

interface class ForgetPasswordController extends GetxController{
  gotoCheckOTP(){}
}

class ForgetPasswordControllerImp extends ForgetPasswordController{

  late TextEditingController email;
  late StatusRequest statusRequest;
  ForgetPasswordData forgetPasswordData=ForgetPasswordData(Get.find());
@override
  gotoCheckOTP() async{
  statusRequest=StatusRequest.loading;
  var response=await forgetPasswordData.checkEmail(email.text);
 // statusRequest=handllingResponse(response['status']);

  if(response['status']=='success'){
   Get.toNamed(Approutes.checkOTP,arguments: {'email':email});
  }
  else{Get.defaultDialog(title: "Error",content: Text("email not found"));}



  }
  @override
  void onInit() {
 email=TextEditingController();
    super.onInit();
  }

}

