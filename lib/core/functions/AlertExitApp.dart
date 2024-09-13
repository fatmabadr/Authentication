import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

 alertExitApp(){
 Get.defaultDialog(
    title: "alert",
    middleText: "Do  you want to Exit App?",
    actions: [ElevatedButton(onPressed: (){exit(0);}, child: Text("yes")),
      ElevatedButton(onPressed: (){Get.back();}, child: Text("no"))],
  );


}