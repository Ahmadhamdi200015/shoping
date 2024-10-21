import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/routes.dart';
import 'package:store/view/screen/home_page.dart';
import 'package:store/view/screen/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
      ),
      // home: const SplashPage(),
      getPages: routes,

    );
  }
}
