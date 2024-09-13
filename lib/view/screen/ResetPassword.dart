import 'package:ecommercee/Controller/auth/ResetpasswordController.dart';
import 'package:ecommercee/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_getx_widget.dart';

import '../../Controller/auth/forgetPasswordController.dart';
class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {

    ResetPasswordControllerImp controller=Get.put(ResetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(title: Text("reset password"),centerTitle: true,),
      body: ListView(padding: EdgeInsets.symmetric(horizontal: 30),
        children: [
          SizedBox(height: 30,),
          TextFormField(
            controller: controller.password,
            decoration: InputDecoration(contentPadding: EdgeInsets.symmetric(vertical: 5,horizontal: 40),
                border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                label: Text("35".tr),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                hintText: "34".tr,suffixIcon: Icon(Icons.lock_outline)),


          ),
          SizedBox(height: 40,),
          TextFormField(
            controller:controller.rePassword ,
            decoration: InputDecoration(contentPadding: EdgeInsets.symmetric(vertical: 5,horizontal: 40),
                border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                label: Text("43".tr),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                hintText: "42".tr,suffixIcon: Icon(Icons.lock_outline)),


          ),
          SizedBox(height: 40,),
          Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),  color: AppColor.primaryColor,),

            child: MaterialButton(child: Text("33".tr,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),onPressed: (){
              controller.goToLogin();
            },),)
        ],),
    );
  }
}
