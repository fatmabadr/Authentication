import 'package:ecommercee/Controller/onBordingController.dart';
import 'package:ecommercee/data/data_source/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/color.dart';
class costumButton extends GetView<OnBoardingControllerImp> {
  const costumButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: MaterialButton(child: Text(
'8'.tr,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white),
      ),onPressed: (){
        controller.next();
      },),


      width: double.infinity,
      height: 50,
      margin: EdgeInsets.only(top: 30, left: 30, right: 30),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColor.primaryColor,
      ),
    );
  }
}
