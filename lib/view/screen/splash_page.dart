import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/core/constant/route.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset(
                "assets/image/splash.jpg",
                fit: BoxFit.fill,
              ),
        ),
        const Center(
          child: Text("Valley",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white),),
        ),
        Positioned(
            bottom: 80,
            left: 40,
            right: 40,
            child: CircleAvatar(
              radius: 40,
              backgroundColor: Colors.white,
              child:CircleAvatar(radius: 25,backgroundColor: Colors.black,child:  IconButton(
                onPressed: () {
                  Get.offAllNamed(AppRoute.homePage);
                },
                icon: const Icon(Icons.arrow_forward,color: Colors.white,),
              ),)
            ))
      ],
    ));
  }
}
