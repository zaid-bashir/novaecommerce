import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nova_ecommerce/app/modules/cart/views/cart_view.dart';
import 'package:nova_ecommerce/app/modules/home/views/home_view.dart';
import 'package:nova_ecommerce/app/modules/profile/views/profile_view.dart';
import 'package:nova_ecommerce/app/modules/search/views/search_view.dart';

class NavbarController extends GetxController {
  List<Widget> pages = [
    const HomeView(),
    const SearchView(),
    const CartView(),
    const ProfileView(),
  ];

  RxInt selectedIndex = 0.obs;

  @override
  void onInit() {
    log("NavbarController Init...");
    super.onInit();
  }
}
