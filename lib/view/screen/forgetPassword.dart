import 'package:ecommercee/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_getx_widget.dart';

import '../../Controller/auth/forgetPasswordController.dart';
class forgetPaddwordPage extends StatelessWidget {
  const forgetPaddwordPage({super.key});

  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImp controller=Get.put(ForgetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(title: Text("14".tr),centerTitle: true,),
      body: ListView(padding: EdgeInsets.symmetric(horizontal: 30),
        children: [
        SizedBox(height: 30,),
          TextFormField(
            controller: controller.email,
            decoration: InputDecoration(contentPadding: EdgeInsets.symmetric(vertical: 5,horizontal: 40),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                label: Text("18".tr),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                hintText: "12".tr,suffixIcon: Icon(Icons.email_outlined)),


          ),
        SizedBox(height: 40,),
        Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),  color: AppColor.primaryColor,),

          child: MaterialButton(child: Text("30".tr,style: TextStyle(color: Colors.white),),onPressed: (){controller.gotoCheckOTP();},),)
        ],),
    );
  }
}
