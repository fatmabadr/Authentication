import 'package:get/get.dart';

import 'Controller/auth/loginController.dart';
import 'Controller/testController.dart';
import 'core/class/Crud.dart';

class MyBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(()=>LoginControllerImp(),fenix: true);
   Get.put(Crud() );

  }

}