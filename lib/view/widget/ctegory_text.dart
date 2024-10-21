import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/controller/product_controller.dart';

class CategoryText extends GetView<ProductController> {
  final String txtCategory;
  final int i;

  const CategoryText({super.key, required this.txtCategory, required this.i});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductController>(builder: (controller)=>InkWell(
      onTap: () {
        controller.changeChoose(i);
      },
      child: Container(
        width: 80,
        height: 20,
        alignment: Alignment.center,
        decoration: controller.selectedCat == i
            ? BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Colors.black)
            : null,
        child: Text(
          txtCategory,
          style: TextStyle(
              color:controller.selectedCat==i?Colors.white: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    ));
  }
}
