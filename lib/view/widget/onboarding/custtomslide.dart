import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:store/controller/onboarding_controller.dart';

import '../../../data/static/static.dart';

class CusstomSlideOnBoarding extends GetView<OnboardingControllerimp> {
  const CusstomSlideOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: controller.pageController,
        onPageChanged: (val) {
          controller.onPageChanged(val);
        },
        itemCount: onboardinglist.length,
        itemBuilder: (context, i) =>
            Column(
              children: [
              const SizedBox(
              height: 60,
            ),

        Image.asset(
            "${onboardinglist[i].image}",
            width: double.infinity,
            height:MediaQuery.sizeOf(context).height/3,
          ),
             const SizedBox(
          height: 40,
        ),
        Expanded(
          child: Text(
            "${onboardinglist[i].title}",
            style: Theme
                .of(context)
                .textTheme
                .headlineMedium),
        ),


          Expanded(
            child:Text(
              "${onboardinglist[i].body}",
              style:Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
          )
          ],
        ));
  }
}