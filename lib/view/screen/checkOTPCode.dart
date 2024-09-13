import 'package:ecommercee/Controller/auth/checkOTPController.dart';
import 'package:ecommercee/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_getx_widget.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

import '../../Controller/auth/forgetPasswordController.dart';
class CheckOTP extends StatelessWidget {
  const CheckOTP({super.key});

  @override
  Widget build(BuildContext context) {
checkOTPControllerImp controller=Get.put(checkOTPControllerImp());

return Scaffold(
      appBar: AppBar(title: Text("41".tr),centerTitle: true,),
      body: OtpTextField(

        fieldWidth: 70,
        numberOfFields: 4,
        borderColor: Color(0xFF512DA8),
        //set to true to show as box or false to show as dash
        showFieldAsBox: true,
        //runs when a code is typed in
        onCodeChanged: (String code) {
        },
        //runs when every textfield is filled
        onSubmit: (String verificationCode){
          controller.putCode(verificationCode);
        controller.checkOTP();
        },  // end onSubmit
      ),
    );
  }
}
