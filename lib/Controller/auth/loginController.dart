import 'package:ecommercee/core/class/StatusRequest.dart';
import 'package:ecommercee/core/constant/AppRoutes.dart';
import 'package:ecommercee/core/functions/handllingResponse.dart';
import 'package:ecommercee/data/data_source/remote/loginData.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController {
  login();
  goToRegister();
  goToForgetPassword();
}

class LoginControllerImp extends LoginController {
  late TextEditingController email;
  late TextEditingController password;
  bool obSecure=true;
  GlobalKey<FormState> formState=GlobalKey<FormState>();
  LoginData loginData =LoginData(Get.find());
  late StatusRequest statusRequest;
change_Obsecure(){

  obSecure=!obSecure!;
   update();
}

  @override
  login() async{
    var formData=formState.currentState;
    if(formData!.validate()){
        statusRequest=StatusRequest.loading;
        var response=await loginData.checkData(email.text, password.text);


        statusRequest=handllingResponse(response);
print("++++++++++");
print(response);
        if(response['status']=='success'){
        Get.toNamed(Approutes.Home);}
        else{
          Get.defaultDialog(title: "error",content: Text("email or password invaild"));
        }



    }



  }

  @override
  goToRegister() {
   // Get.delete<LoginControllerImp>();
    Get.offNamed(Approutes.register);
  }
  @override
  goToForgetPassword() {
Get.toNamed(Approutes.forgetPassword);
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }
}