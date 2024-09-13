
import 'package:ecommercee/core/Middleware/MyMiddleware.dart';
import 'package:ecommercee/core/constant/AppRoutes.dart';
import 'package:ecommercee/view/screen/Home.dart';
import 'package:ecommercee/view/screen/ResetPassword.dart';
import 'package:ecommercee/view/screen/checkOTPCode.dart';
import 'package:ecommercee/view/screen/forgetPassword.dart';
import 'package:ecommercee/view/screen/language.dart';
import 'package:ecommercee/view/screen/onboarding.dart';
import 'package:ecommercee/view/screen/register.dart';
import 'package:ecommercee/view/test.dart';
import 'package:get/get.dart';
import 'view/screen/login.dart';

List<GetPage<dynamic>> routes=[
  GetPage(name:"/", page:()=> const Mylanguage(), middlewares: [MyMiddleware()]),
  GetPage(name:Approutes.Home, page:()=> const Home()),

  GetPage(name: Approutes.login, page:()=> const loginPage()),
  GetPage(name: Approutes.OnBoarding, page:()=> const OnBoarding()),
  GetPage(name: Approutes.register, page:()=> const registerPage()),
  GetPage(name: Approutes.forgetPassword, page:()=> const forgetPaddwordPage()),
  GetPage(name: Approutes.checkOTP, page:()=> const CheckOTP()),
  GetPage(name: Approutes.ResetPasswordPage, page:()=> const ResetPasswordPage()),
];

