import 'dart:io';

import 'package:ecommercee/Controller/auth/loginController.dart';
import 'package:ecommercee/core/constant/AppRoutes.dart';
import 'package:ecommercee/core/constant/color.dart';
import 'package:ecommercee/core/constant/image_assets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/functions/AlertExitApp.dart';
import '../../core/functions/vlaidateInput.dart';

class loginPage extends StatelessWidget {
  const loginPage({super.key});


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "sign in",
          style: Theme.of(context)
              .textTheme
              .headlineLarge!
              .copyWith(color: AppColor.grey),
        ),
        centerTitle: true,
      ),
      body: PopScope(
        canPop:false,
        onPopInvoked: (bool didPop) {alertExitApp();
        },
        child: GetBuilder<LoginControllerImp>(
          builder: (controller)=>Form(
            key: controller.formState,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: ListView(
                children: [
                  Image.asset(
                    AppImageAssets.logo,
                    height: 200,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Text(
                    "2".tr,
                    style: Theme.of(context).textTheme.bodyLarge,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    "11".tr,
                    style: const TextStyle(fontSize: 15),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormField(

                      validator:(val){return ValidateInput(val!,5,100,"email");} ,
                      controller: controller.email,
                      decoration: InputDecoration(
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 40),
                        label: Text("12".tr),
                        suffixIcon: const Icon(Icons.email_outlined),
                        border:
                        OutlineInputBorder(borderRadius: BorderRadius.circular(30.0)),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  GetBuilder<LoginControllerImp>(
                      builder: (controller) =>TextFormField(
                    obscureText: controller.obSecure,
                    validator: (val){return ValidateInput(val!, 5, 20, "password");},
                    controller: controller.password,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                        label: Text("13".tr),
                        contentPadding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 40),
                        suffixIcon: InkWell(child:const Icon(Icons.lock_outline) ,onTap: (){
                         controller.change_Obsecure();
                        },),
                        floatingLabelBehavior: FloatingLabelBehavior.always),
                  )),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                      onTap: () {controller.goToForgetPassword();},
                      child: Text("14".tr,
                          textAlign: TextAlign.end,
                          style: const TextStyle(
                            decoration: TextDecoration.underline,
                          ))),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: AppColor.primaryColor),
                      child: MaterialButton(
                        onPressed: () {controller.login();},
                        child:  Text(
                          "15".tr,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        "16".tr,
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      InkWell(
                        child: Text(
                          "17".tr,
                          style: TextStyle(color: AppColor.primaryColor),
                        ),
                        onTap: () {
                          controller.goToRegister();
                        },
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      )
    );
  }
}
