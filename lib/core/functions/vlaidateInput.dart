import 'package:get/get.dart';

ValidateInput(String value,int minLength,int maxLength,String type){
 if(type=="username"){
   if(!GetUtils.isUsername(value)){return "not username!";}}

 if(type=="email"){
   if(!GetUtils.isEmail(value)){return "not email!";}}
 if(type=="phone"){
   if(!GetUtils.isPhoneNumber(value)){return "not phone!";}}


   if(value.length>maxLength){return "length must smaller than $maxLength";}
   if(value.length<minLength){return "length must greater than $minLength";}


}