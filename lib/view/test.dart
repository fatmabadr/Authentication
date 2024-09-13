import 'package:ecommercee/Controller/testController.dart';
import 'package:ecommercee/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../core/class/StatusRequest.dart';
class testView extends StatelessWidget {
  const testView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(testControlelr());
    return  Scaffold(
      appBar:AppBar(title:Text('test',),backgroundColor: AppColor.primaryColor,),
      body:
      Center(child: GetBuilder<testControlelr>(builder: (controller){
       print(controller.statusRequest);

        if(controller.statusRequest==StatusRequest.loading){
          return Lottie.asset( "assets/lottie/loading.json");

        }
        else if(controller.statusRequest==StatusRequest.failure){
          return Lottie.asset("assets/lottie/NoNetwork.json");

        }
        else if(controller.statusRequest==StatusRequest.serverFailure){
          return Text("serverFailure");

        }
        else if(controller.statusRequest==StatusRequest.noInternet){
          return Text("noInternet");

        }
        else{
          return ListView.builder(
            itemCount: controller.Data.length,
            itemBuilder: ( context,  index) {
              return Text("${controller.Data}");
            },

          );
        }




      },),)

    );
  }
}
