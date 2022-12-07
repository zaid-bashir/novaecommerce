import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nova_ecommerce/app/data/Utils/appcolors.dart';
import 'package:nova_ecommerce/app/routes/app_pages.dart';
import '../controllers/onboarding_controller.dart';
import 'package:intro_slider/intro_slider.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    OnboardingController controller =
        Get.put<OnboardingController>(OnboardingController());
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Obx(() {
                return Container(
                  color: kBackgroundColor,
                  height: 388,
                  width: MediaQuery.of(context).size.width,
                  child: controller.sliderIndex.value == 0
                      ? Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Image.asset(
                            "assets/onboard1.png",
                            height: 280,
                            width: 280,
                          ),
                        )
                      : controller.sliderIndex.value == 1
                          ? Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Image.asset(
                                "assets/onboard2.png",
                                height: 280,
                                width: 280,
                              ),
                            )
                          : Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Image.asset(
                                "assets/onboard3.png",
                                height: 280,
                                width: 280,
                              ),
                            ),
                );
              }),
              Container(
                height: MediaQuery.of(context).size.height * 0.48,
                width: double.infinity,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4,
                      color: kSystemNotificationTrayColor,
                    ),
                  ],
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: IntroSlider(
                  key: UniqueKey(),
                  indicatorConfig: IndicatorConfig(
                      spaceBetweenIndicator: 20,
                      colorIndicator: const Color(0XFFCACACA),
                      activeIndicatorWidget: Container(
                        width: 28,
                        height: 9,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: kButtonBackgroundColor),
                      )),
                  onTabChangeCompleted: ((index) {
                    log(index.toString());
                    controller.sliderIndex.value = index;
                  }),
                  doneButtonStyle: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all(kButtonBackgroundColor),
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                  ),
                  skipButtonStyle: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(Colors.black),
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                  ),
                  nextButtonStyle: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all(kButtonBackgroundColor),
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                  ),
                  listContentConfig: controller.listContentConfig,
                  onDonePress: () {
                    Get.toNamed(Routes.NAVBAR);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
