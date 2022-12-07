import 'dart:developer';

import 'package:get/get.dart';
import 'package:nova_ecommerce/app/modules/home/models/categorymodel.dart';
import 'package:nova_ecommerce/app/modules/home/models/recommendedmodel.dart';

class HomeController extends GetxController {
  //Category Data from API
  //======================
  List<CategoryModel> categoryData = [
    CategoryModel(
        imageUrl:
            "https://images.pexels.com/photos/1571460/pexels-photo-1571460.jpeg",
        title: "Furniture"),
    CategoryModel(
        imageUrl:
            "https://c0.wallpaperflare.com/preview/591/632/1019/25-30-year-old-blonde-hair-blue-dress.jpg",
        title: "Fashion"),
    CategoryModel(
        imageUrl:
            "https://thumbs.dreamstime.com/z/many-used-modern-electronic-gadgets-use-white-floor-reuse-recycle-concept-top-view-153892434.jpg",
        title: "Electronics"),
    CategoryModel(
        imageUrl:
            "https://images.pexels.com/photos/1571460/pexels-photo-1571460.jpeg",
        title: "Furniture"),
    CategoryModel(
        imageUrl:
            "https://c0.wallpaperflare.com/preview/591/632/1019/25-30-year-old-blonde-hair-blue-dress.jpg",
        title: "Fashion"),
    CategoryModel(
        imageUrl:
            "https://thumbs.dreamstime.com/z/many-used-modern-electronic-gadgets-use-white-floor-reuse-recycle-concept-top-view-153892434.jpg",
        title: "Electronics"),
  ];

  //Recommended API Data
  //====================

  List<RecommendedModel> recommendedData = [
    RecommendedModel(
        imageUrl:
            "https://m.media-amazon.com/images/I/51KICeTw8oS._SX404_BO1,204,203,200_.jpg",
        title: "Flutter Cookbook for Flutter Dev",
        category: "Electronics",
        price: "2500"),
    RecommendedModel(
      imageUrl: "https://m.media-amazon.com/images/I/81PmuPDVt1L._SL1210_.jpg",
      title: "CRAFT IN INDIA 4+1 Outdoor Indoor",
      category: "Furniture",
      price: "1000",
    ),
    RecommendedModel(
      imageUrl: "https://m.media-amazon.com/images/I/51VYKdv8nkL.jpg",
      title: "Double Sided Tape for Clothes Fashion",
      category: "Fashion",
      price: "400",
    ),
    RecommendedModel(
        imageUrl:
            "https://m.media-amazon.com/images/I/51KICeTw8oS._SX404_BO1,204,203,200_.jpg",
        title: "Flutter Cookbook for Flutter Dev",
        category: "Electronics",
        price: "2500"),
    RecommendedModel(
      imageUrl: "https://m.media-amazon.com/images/I/81PmuPDVt1L._SL1210_.jpg",
      title: "CRAFT IN INDIA 4+1 Outdoor Indoor",
      category: "Furniture",
      price: "1000",
    ),
    RecommendedModel(
      imageUrl: "https://m.media-amazon.com/images/I/51VYKdv8nkL.jpg",
      title: "Double Sided Tape for Clothes Fashion",
      category: "Fashion",
      price: "400",
    ),
  ];
  @override
  void onInit() {
    log("HomeController Init...");
    super.onInit();
  }
}
