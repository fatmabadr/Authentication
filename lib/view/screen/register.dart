import 'package:ecommercee/Controller/auth/regesterController.dart';
import 'package:ecommercee/core/constant/color.dart';
import 'package:ecommercee/core/constant/image_assets.dart';
import 'package:ecommercee/core/functions/AlertExitApp.dart';
import 'package:ecommercee/core/functions/vlaidateInput.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class registerPage extends StatelessWidget {
  const registerPage({super.key});

  @override
  Widget build(BuildContext context) {
    RegisterControllerImp controller = Get.put(RegisterControllerImp());

    return Scaffold(
      appBar: AppBar(
        title: Text("17".tr),
        centerTitle: true,
      ),
      body: PopScope(
        canPop: false,
        onPopInvoked: (value){alertExitApp();},

        child: Form(
          key: controller.formState,
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 30),
            children: [
              Image.asset(
                AppImageAssets.logo,
                height: 200,
              ),
              SizedBox(
                height: 25,
              ),

              SizedBox(
                height: 20,
              ),
              Text(
                "24".tr,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                validator: (value){return ValidateInput(value!, 5, 50, "username");},
                controller: controller.username,
                decoration: InputDecoration(
                    label: Text("20".tr),
                    hintText: "23".tr,
                    suffixIcon: Icon(Icons.person_2_outlined),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    contentPadding:
                    EdgeInsets.symmetric(vertical: 5, horizontal: 40)),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                validator: (value){return ValidateInput(value!, 5, 100, "email");},
                controller: controller.email,
                decoration: InputDecoration(
                    label: Text("18".tr),
                    suffixIcon: Icon(Icons.email_outlined),
                    hintText: "12".tr,
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                    contentPadding:
                    EdgeInsets.symmetric(vertical: 5, horizontal: 40)),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                validator: (value){return ValidateInput(value!, 5, 12, "phone");},
                controller: controller.phone,
                decoration: InputDecoration(
                    label: Text("21".tr),
                    suffixIcon: Icon(Icons.phone_android_outlined),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    hintText: "22".tr,
                    contentPadding:
                    EdgeInsets.symmetric(vertical: 5, horizontal: 40)),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                validator: (value){return ValidateInput(value!, 5, 20, "password");},
                controller: controller.password,
                decoration: InputDecoration(
                    label: Text("19".tr),
                    contentPadding:
                    EdgeInsets.symmetric(vertical: 5, horizontal: 40),
                    hintText: "13".tr,
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                    suffixIcon: Icon(Icons.lock_outline)),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: AppColor.primaryColor),
                child:MaterialButton(


                  onPressed: () {
                    controller.register();
                  },
                  child: Text("17".tr,style: TextStyle(color: Colors.white),),
                ) ,)
              ,
              Row(
                children: [
                  Text("25".tr,style: TextStyle(fontSize: 20),),
                  InkWell(
                    child: Text("26".tr,style: TextStyle(color: AppColor.primaryColor),),
                    onTap: () {
                      controller.goToLogin();
                    },
                  )
                ],
              )
            ],
          ),
        ),
      )
    );
  }
}
