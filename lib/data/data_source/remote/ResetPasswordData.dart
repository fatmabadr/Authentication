import 'package:ecommercee/core/class/Crud.dart';

class ResetPasswordData{
Crud crud;
ResetPasswordData(this.crud);
updatePassword(String email,String password)async{
var response=await crud.updatPassword("https://192.168.8.21/Ecommerce/auth/ResetPassword.php", {'email':email,'password':password});


return response.fold((l)=>l, (r)=>r);

}
}