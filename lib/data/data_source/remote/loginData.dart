import 'package:ecommercee/core/class/Crud.dart';

class LoginData {
  Crud crud;

  LoginData(this.crud);

  checkData(String email, String password) async {
    var response = await crud.checkData(
        "https://192.168.8.21/Ecommerce/auth/login.php",
        {'email': email, 'password': password});
    return response.fold((l) => l, (r) => r);
  }
}
