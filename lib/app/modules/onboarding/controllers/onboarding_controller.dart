import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intro_slider/intro_slider.dart';

import '../../../data/Utils/appstyles.dart';

class OnboardingController extends GetxController {
  RxInt sliderIndex = 0.obs;
  List<ContentConfig> listContentConfig = [
    ContentConfig(
      title: "Discover a New For You",
      marginDescription: const EdgeInsets.only(top: 24.85),
      marginTitle: const EdgeInsets.only(top: 30),
      styleTitle: kHeading1TestStyle,
      styleDescription: kHeading2TestStyle,
      description:
          "Lots of new products here and decide\nwhich product is best for you",
    ),
    ContentConfig(
      title: "Make your visions happen",
      styleTitle: kHeading1TestStyle,
      styleDescription: kHeading2TestStyle,
      description: "Premium e-commerce marketing \n agency for your needs",
      marginDescription: const EdgeInsets.only(top: 24.85),
      marginTitle: const EdgeInsets.only(top: 30),
    ),
    ContentConfig(
      title: "Selling only the best things online",
      marginDescription: const EdgeInsets.only(top: 24.85),
      marginTitle: const EdgeInsets.only(top: 30),
      styleTitle: kHeading1TestStyle,
      styleDescription: kHeading2TestStyle,
      description:
          "Now get huge deals on every Product\nthat fulfills your need",
    ),
  ];

  @override
  void onInit() {
    log("OnboardingController Init...");
    super.onInit();
  }
}
