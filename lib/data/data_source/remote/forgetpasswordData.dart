import '../../../core/class/Crud.dart';

class ForgetPasswordData{
   Crud crud;
   ForgetPasswordData(this.crud);

   checkEmail(String email) async {
     var response = await crud.checkData(
         "https://192.168.8.21/Ecommerce/auth/checkandsendEmail.php",
         {'email': email });

     return response.fold((l) => l, (r) => r);
   }
}
