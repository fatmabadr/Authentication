
import '../../../core/class/Crud.dart';

class CheckOtpData{
  Crud crud;
  CheckOtpData(this.crud);
  checkOtp(String email,String otp)async{
var response = await crud.checkData("https://192.168.8.21/Ecommerce/auth/checkEmailandOTP.php",
    {'email':email,'otp':otp});
return response.fold((l)=>l, (r)=>r);
  }
}