import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:store/data/static/static.dart';

import '../core/constant/route.dart';
import '../core/services/service.dart';

abstract class OnboardingController extends GetxController{
  next();

  onPageChanged(int index);

}

class OnboardingControllerimp extends OnboardingController{
  PageController? pageController;
  int currentpage=0;
  @override
  next() {
    currentpage++;
    if(currentpage>onboardinglist.length-1){
      Get.offAllNamed(AppRoute.splash);
    }else{
      pageController?.animateToPage(currentpage, duration: const Duration(milliseconds: 900), curve:Curves.ease);
    }

  }

  @override
  onPageChanged(int index) {
    currentpage=index;
    update();

  }
  @override
  void onInit() {
    pageController=PageController();
    super.onInit();
  }

}