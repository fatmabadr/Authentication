import 'package:ecommercee/Controller/onBordingController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/color.dart';
import '../../../data/data_source/static/static.dart';
class CustomPageSlider extends GetView<OnBoardingControllerImp>{
  const CustomPageSlider({super.key});


  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller:controller.pageController,
      onPageChanged: (value){
        controller.onPageChanged(value);
      },
        itemCount: onbordingList.length,
        itemBuilder: (context, index) => Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Text(
              onbordingList[index].title!,
              style: Theme.of(context).textTheme.headlineLarge
            ),
            const SizedBox(
              height: 70,
            ),
            Image.asset(
              onbordingList[index].image!,
              width: 200,
              height: 250,
              fit: BoxFit.fill,
            ),
            const SizedBox(
              height: 70,
            ),
            Container(
              width: double.infinity,
              alignment: Alignment.center,
              child: Text(
                textAlign: TextAlign.center,
                onbordingList[index].body!,
                style:Theme.of(context).textTheme.bodyMedium,
              ),
            )
          ],
        ));
  }
}
