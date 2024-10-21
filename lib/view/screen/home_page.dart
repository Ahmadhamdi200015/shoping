import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:store/controller/product_controller.dart';
import 'package:store/view/component/text_form_search.dart';

import '../widget/ctegory_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey scaffoldKey = GlobalKey<ScaffoldState>();

    ProductController controller = Get.put(ProductController());
    return Scaffold(
      drawer: Drawer(
        key: scaffoldKey,
        child: Column(
          children: [
            DrawerHeader(
                child: ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                CircleAvatar(
                  radius: 50,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset(
                        "assets/image/tom.jpg",
                        width: 100,
                        height: 100,
                        fit: BoxFit.fill,
                      )),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: const Text(
                    "Tom Holland",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 20),
                  ),
                )
              ],
            )),
            GestureDetector(
              onTap: () {
                Get.snackbar("Warning", "You clicked on profile tab");
              },
              child: const ListTile(
                title: Text(
                  "Profile",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                trailing: Icon(Icons.person_outline),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.snackbar("Warning", "You clicked on Settings tab");
              },
              child: const ListTile(
                title: Text(
                  "Settings",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                trailing: Icon(Icons.settings_outlined),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.snackbar("Warning", "You clicked on Contact tab");
              },
              child: const ListTile(
                title: Text(
                  "Contact us",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                trailing: Icon(Icons.phone_outlined),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.snackbar("Warning", "You clicked on About us tab");
              },
              child: const ListTile(
                title: Text(
                  "About us",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                trailing: Icon(Icons.info_outline),
              ),
            ),
            Spacer(),
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              child: GestureDetector(
                onTap: () {
                },
                child: const ListTile(
                  title: Text(
                    "Log Out",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  trailing: Icon(Icons.logout_outlined),
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.cabin,
                color: Colors.black,
              ),
              icon: Icon(
                Icons.home_outlined,
                color: Colors.grey,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_bag_outlined,
                color: Colors.grey,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_border_outlined,
                color: Colors.grey,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline,
                color: Colors.grey,
              ),
              label: ""),
        ],
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Builder(
          builder: (context) => IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(Icons.menu, size: 30)),
        ),
        actions: const [
          Icon(Icons.notifications_none_outlined),
          SizedBox(
            width: 5,
          ),
          Icon(Icons.shopping_bag_outlined),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Container(
        height: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: ListView(
          children: [
            const Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  flex: 4,
                  child: TextFormSearch(),
                ),
                SizedBox(
                  width: 5,
                ),
                Expanded(
                    flex: 1,
                    child: CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 30,
                      child: Icon(
                        Icons.filter_list_off,
                        color: Colors.white,
                      ),
                    ))
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 40,
              child: ListView.separated(
                  separatorBuilder: (context, index) => const SizedBox(
                        width: 5,
                      ),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.category.length,
                  itemBuilder: (context, index) {
                    return CategoryText(
                      i: index,
                      txtCategory: "${controller.category[index]}",
                    );
                  }),
            ),
            const SizedBox(
              height: 20,
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: controller.products.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1 / 2, crossAxisCount: 2),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    controller.goToProductsDetails(controller.products);
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            topLeft: Radius.circular(20))),
                    margin: index.isEven
                        ? const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 0)
                        : const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 20),
                    child: Column(
                      children: [
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(
                                      controller.products[index]['image']),
                                )),
                            Positioned(
                                top: 5,
                                right: 5,
                                child: CircleAvatar(
                                    radius: 20,
                                    backgroundColor: Colors.black,
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.favorite_border_outlined,
                                          color: Colors.white,
                                        ))))
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 5),
                          child: Text(
                            "${controller.products[index]['title']}",
                            style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 17),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 5),
                          child: Text(
                            "${controller.products[index]['desc']}",
                            style: const TextStyle(color: Colors.grey),
                          ),
                        ),
                        Text(
                          "${controller.products[index]['price']}\$",
                          style: const TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
