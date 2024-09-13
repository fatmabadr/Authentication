import 'package:ecommercee/core/class/Crud.dart';

class TestData{
  Crud crud;
  TestData(this.crud);
  getData () async{
    var response= await crud.postData("https://192.168.8.21/Ecommerce/auth/signup.php", {});
    return response.fold((l)=>l, (r)=>r);
  }
}