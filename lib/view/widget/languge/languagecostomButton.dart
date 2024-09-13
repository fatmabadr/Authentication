
import 'package:flutter/material.dart';
import '../../../core/constant/color.dart';
class CustomButton extends StatelessWidget {
  final String buttonText;
  final void Function()? onPressed;
  const CustomButton({super.key,required this.buttonText,this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 100),child:MaterialButton(
      color: AppColor.primaryColor,
        onPressed:onPressed ,
        child: Text(buttonText,style: TextStyle(color: Colors.white,fontSize: 30),),
      ),
    );
    ;
  }
}
