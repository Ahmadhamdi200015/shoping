import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:store/controller/details_controller.dart';
import 'package:store/controller/product_controller.dart';

class ProductsDetailsPage extends StatelessWidget {
  const ProductsDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    DetailsController controller = Get.put(DetailsController());
    return Scaffold(
      bottomNavigationBar: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: MaterialButton(
          padding: const EdgeInsets.symmetric(vertical: 20),
          minWidth: 400,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)),
          color: Colors.black,
          onPressed: () {},
          child: const Text(
            "Add To Cart",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                    width: double.infinity,
                    height: MediaQuery
                        .sizeOf(context)
                        .height / 1.7
                    ,
                    child: Image.asset(
                      controller.details[3]['image'], fit: BoxFit.fill,)),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 40, horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.white,
                          child: IconButton(
                            onPressed: () {
                              Get.back();
                            },
                            icon: const Icon(Icons.arrow_back, color: Colors
                                .black,),
                          )),
                      const CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.favorite,
                          color: Colors.black,
                          size: 30,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${controller.details[3]['title']}",
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Text(
                    "${controller.details[3]['price']}\$",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.black),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20),
              alignment: Alignment.topLeft,
              child: const Text(
                "Size",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 17),
              ),
            ),
            const Padding(
                padding: EdgeInsets.symmetric(
                    vertical: 10, horizontal: 10),
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Text("S"),
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.black,
                        child: Text(
                          "M",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Text("L"),
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Text("XL"),
                      ),
                    ],
                  ),

            ),
            Container(
              margin: const EdgeInsets.only(left: 20),
              alignment: Alignment.topLeft,
              child: const Text(
                "Color",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 17),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.green,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.black,
                    ),
                    child: const Icon(Icons.done, color: Colors.white,),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.brown,
                    ),
                  )
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
