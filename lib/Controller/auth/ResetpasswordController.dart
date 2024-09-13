import 'package:ecommercee/core/class/StatusRequest.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../core/constant/AppRoutes.dart';
import '../../data/data_source/remote/ResetPasswordData.dart';

abstract class ResetPasswordController extends GetxController{
goToLogin();
}


class ResetPasswordControllerImp extends ResetPasswordController{
  late TextEditingController password;
  late TextEditingController rePassword;
  late String email;
  ResetPasswordData resetPasswordData=ResetPasswordData(Get.find());

@override
  goToLogin() async{
if(password.text!=rePassword.text){
  Get.defaultDialog(title: "error",content: Text("passwords not match"));}
else{

  var response = await resetPasswordData.updatePassword(
      email, password.text,);

  if (response== StatusRequest.success) {
    Get.offNamed(Approutes.Home);
  }

   else if (response ==StatusRequest.serverFailure) {


    Get.defaultDialog(
        title: "Error!", content: const Text("Server Failure"));
  }
   else {
    Get.defaultDialog(
        title: "Error!", content: const Text(" Failure"));
  }

}
  update();

  }
  @override
  void onInit() {
    // TODO: implement onInit
    password=TextEditingController();
    rePassword=TextEditingController();
    email=Get.arguments['email'];


  }
}