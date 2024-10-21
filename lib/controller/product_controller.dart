import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:store/core/constant/route.dart';

class ProductController extends GetxController {
  int selectedCat = 0;

  changeChoose(val) {
    selectedCat = val;
    update();
  }

  goToProductsDetails(List products){
    Get.toNamed(AppRoute.productsDetailsPage,arguments: {
      "listPro":products
    });
  }


  List category=["Dress","Jacket","T-Shirt","pants"];

  List products = [
    {
      "image": "assets/image/tomsplash.jpg",
      "title": "Roller Rabbit",
      "desc": "aboutProducts",
      "price": "320"
    },
    {
      "image": "assets/image/tomsummer.jpg",
      "title": "Endless rose",
      "desc": "aboutProductstow",
      "price": "280"
    },
    {
      "image": "assets/image/tom.jpg",
      "title": "Theory",
      "desc": "aboutProducts",
      "price": "500"
    },
    {
      "image": "assets/image/tomhollond.jpg",
      "title": "Thomaici cili",
      "desc": "aboutProductsfour",
      "price": "100"
    },
    {
      "image": "assets/image/tomjaket.jpg",
      "title": "productsfive",
      "desc": "aboutProducts",
      "price": "80"
    },
  ];
  @override
  void onInit() {
    print(products[0]['image']);
    super.onInit();
  }

}