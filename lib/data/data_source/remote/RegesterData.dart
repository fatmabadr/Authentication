import '../../../core/class/Crud.dart';

class RegisterData{
  late Crud crud;
  RegisterData(this.crud);

  postData(String username,String email,String password,String phone)async{

    var response= await crud.postData("https://192.168.8.21/Ecommerce/auth/signup.php", {
      'username':username,
      'email':email,
      'phone':phone,
      'password':password

    });
    print("ima in method post");
    print (response.fold((l)=>l, (r)=>r));

    return response.fold((l)=>l, (r)=>r);
  }

}