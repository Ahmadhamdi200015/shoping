import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/core/services/service.dart';

import '../constant/route.dart';

class MyMiddleware extends GetMiddleware{
  @override
  int? get  priority => 1;

  MyService myService=Get.find();

  @override
  RouteSettings? redirect(String? route){
    if(myService.sharedPrefrences.getString("OnBoarding")=="1"){
      return const RouteSettings(name: AppRoute.splash);
    }
    return null;
  }

}