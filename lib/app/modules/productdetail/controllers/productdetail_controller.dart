import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductdetailController extends GetxController {
  List<Widget> images = [
    Image.network(
      "https://m.media-amazon.com/images/I/51KICeTw8oS._SX404_BO1,204,203,200_.jpg",
      width: 270,
      height: 280,
      fit: BoxFit.cover,
    ),
    Image.network(
      "https://m.media-amazon.com/images/I/81PmuPDVt1L._SL1210_.jpg",
      width: 270,
      height: 280,
      fit: BoxFit.cover,
    ),
    Image.network(
      "https://m.media-amazon.com/images/I/51VYKdv8nkL.jpg",
      width: 270,
      fit: BoxFit.cover,
      height: 280,
    ),
  ];

  @override
  void onInit() {
    log("ProductDetailsController Init");
    super.onInit();
  }
}
