import 'package:ecommercee/core/class/StatusRequest.dart';
import 'package:ecommercee/data/data_source/remote/testData.dart';
import 'package:get/get.dart';

import '../core/functions/handllingResponse.dart';


class testControlelr extends GetxController{

  TestData testdata =TestData(Get.find());
  List Data=[];
  late StatusRequest statusRequest;

  getData()async{
    statusRequest=StatusRequest.loading;
     var response=await testdata.getData();
     statusRequest=handllingResponse(response);
     if(statusRequest==StatusRequest.success){
       Data.addAll(response['data']);
     }
      update();

  }
  @override
  void onInit() {
   getData();

   super.onInit();

  }
}