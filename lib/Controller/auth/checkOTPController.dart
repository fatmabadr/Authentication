import 'package:ecommercee/core/constant/AppRoutes.dart';
import 'package:ecommercee/data/data_source/remote/checkOTPData.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class checkOTPController extends GetxController{
  checkOTP();
  putCode(String code);


}
class checkOTPControllerImp extends checkOTPController{
  late String code;
  late String email;
  CheckOtpData checkOtpData=CheckOtpData(Get.find());
@override
  putCode(String code) {
this.code=code;
update();
  }

//Get.toNamed(Approutes.ResetPasswordPage);


  @override
  checkOTP() async{
    print("hiiiii+++++++++++++++++++");
    print(email);
    print(code);
var response=await checkOtpData.checkOtp(email, code);
print(response);
if(response['status']=='success'){
  Get.toNamed(Approutes.ResetPasswordPage,arguments: {'email':email});
}
else{
  print('otp error');
}


  }

@override void onInit() {
email=Get.arguments['email'].text;
    super.onInit();
  }


}