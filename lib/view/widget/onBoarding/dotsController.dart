import 'package:ecommercee/Controller/onBordingController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/color.dart';
import '../../../data/data_source/static/static.dart';
class customDotsControlelr extends StatelessWidget {
  const customDotsControlelr({super.key});

  @override
  Widget build(BuildContext context) {

    return GetBuilder<OnBoardingControllerImp>(builder: (controller)=>  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(
            onbordingList.length,
                (index) => AnimatedContainer(
              margin: const EdgeInsets.only(right: 5),
              duration: const Duration(milliseconds: 900),
              width: controller.currentPage==index?20:6,
              height: 6,
              decoration:
              const BoxDecoration(color: AppColor.primaryColor),
            ))
      ],
    ))

    ;
  }
}
