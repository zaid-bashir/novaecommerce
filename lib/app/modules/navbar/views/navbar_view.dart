import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:svg_icon/svg_icon.dart';

import '../controllers/navbar_controller.dart';

class NavbarView extends GetView<NavbarController> {
  const NavbarView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    NavbarController controller = Get.put<NavbarController>(NavbarController());
    return Scaffold(
      body: Obx(() => controller.pages[controller.selectedIndex.value]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: controller.selectedIndex.value,
        unselectedItemColor: const Color(0XFFCACACA),
        selectedItemColor: Colors.black,
        showUnselectedLabels: false,
        onTap: (value) {
          log(value.toString());
          controller.selectedIndex.value = value;
        },
        showSelectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: SvgIcon(
              "assets/Home.svg",
              color: Colors.black,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: SvgIcon("assets/Search.svg"),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: SvgIcon("assets/Bag.svg"),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: SvgIcon("assets/Profile.svg"),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
