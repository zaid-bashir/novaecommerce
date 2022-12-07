import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nova_ecommerce/app/data/Utils/appcolors.dart';
import 'package:nova_ecommerce/app/data/Utils/appstyles.dart';
import 'package:nova_ecommerce/app/routes/app_pages.dart';
import 'package:svg_icon/svg_icon.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.put<HomeController>(
      HomeController(),
    );
    final GlobalKey<ScaffoldState> scaffoldkey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldkey,
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: kBackgroundColor,
                ), //BoxDecoration
                child: Row(
                  children: [
                    Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(27),
                        image: const DecorationImage(
                          image: AssetImage(
                            "assets/Avatar.jpg",
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Rizale Greyrat",
                      style: kHeadName1TestStyle,
                    )
                  ],
                ), //UserAccountDrawerHeader
              ),
            ), //DrawerHeader
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      'Home',
                      style: kHeadName1TestStyle.copyWith(
                          color: kButtonBackgroundColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    title: Text(
                      'My Wallet',
                      style: kHeadName1TestStyle.copyWith(
                          color: kHeading1Color,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    title: Text(
                      'Category',
                      style: kHeadName1TestStyle.copyWith(
                          color: kHeading1Color,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    title: Text(
                      'My Likes',
                      style: kHeadName1TestStyle.copyWith(
                          color: kHeading1Color,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ListTile(
                    title: Text(
                      'Contact Us',
                      style: kHeadName1TestStyle.copyWith(
                          color: kHeading1Color,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    title: Text(
                      'About',
                      style: kHeadName1TestStyle.copyWith(
                          color: kHeading1Color,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    title: Text(
                      'Help',
                      style: kHeadName1TestStyle.copyWith(
                          color: kHeading1Color,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    title: Text(
                      'Logout',
                      style: kHeadName1TestStyle.copyWith(
                          color: kHeading1Color,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25, top: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      GestureDetector(
                          onTap: () {
                            scaffoldkey.currentState!.openDrawer();
                          },
                          child: const SvgIcon("assets/Sidemenu.svg")),
                      const Spacer(),
                      Container(
                        height: 37,
                        width: 120,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(blurRadius: 10, color: Colors.white12),
                          ],
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Image.asset(
                            "assets/User.png",
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      const Spacer(),
                      const SvgIcon("assets/Notification.svg"),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0XFFF5F5F5),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextField(
                      textAlignVertical: TextAlignVertical.center,
                      controller: TextEditingController(),
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search product",
                          prefixIcon: Padding(
                            padding: EdgeInsets.all(13.0),
                            child: SvgIcon(
                              "assets/Search.svg",
                              width: 24,
                              height: 24,
                            ),
                          )),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Text(
                        "Category",
                        style: kHeadName1TestStyle,
                      ),
                      const Spacer(),
                      Text(
                        "See More",
                        style: kHeadName2TestStyle,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 120,
                    width: double.infinity,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: controller.categoryData.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Stack(
                              children: [
                                Container(
                                  height: 120,
                                  width: 235,
                                  decoration: BoxDecoration(
                                    color: const Color(0XFFCACACA),
                                    image: DecorationImage(
                                        image: NetworkImage(controller
                                            .categoryData[index].imageUrl),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(left: 20.0),
                                      child: Text(
                                        controller.categoryData[index].title,
                                        style: kHeadName1TestStyle.copyWith(
                                            color: Colors.white),
                                      ),
                                    )),
                              ],
                            ),
                          );
                        }),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Text(
                        "Recomended For You",
                        style: kHeadName1TestStyle,
                      ),
                      const Spacer(),
                      Text(
                        "See More",
                        style: kHeadName2TestStyle,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 300,
                    width: double.infinity,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: controller.recommendedData.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              Get.toNamed(Routes.PRODUCTDETAIL);
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: SizedBox(
                                height: 182,
                                width: 180,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Stack(
                                      children: [
                                        Container(
                                          height: 200,
                                          width: 235,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: NetworkImage(controller
                                                    .recommendedData[index]
                                                    .imageUrl),
                                                fit: BoxFit.cover),
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.topRight,
                                          child: Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Container(
                                              height: 28,
                                              width: 28,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(14),
                                              ),
                                              child: const Padding(
                                                padding: EdgeInsets.all(4.0),
                                                child: SvgIcon(
                                                  "assets/Heart.svg",
                                                  color: Colors.red,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      controller.recommendedData[index].title,
                                      style: kHeadName1TestStyle.copyWith(
                                          fontSize: 15),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                        "\$${controller.recommendedData[index].price}",
                                        style: kHeading1TestStyle.copyWith(
                                          color: kButtonBackgroundColor,
                                          fontSize: 17,
                                        )),
                                  ],
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
