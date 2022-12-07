// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_slider/image_slider.dart';
import 'package:nova_ecommerce/app/data/Utils/appcolors.dart';
import 'package:nova_ecommerce/app/data/Utils/appstyles.dart';
import 'package:nova_ecommerce/app/modules/productdetail/controllers/productdetail_controller.dart';
import 'package:svg_icon/svg_icon.dart';

class ProductdetailView extends StatefulWidget {
  const ProductdetailView({super.key});

  @override
  State<ProductdetailView> createState() => _ProductdetailViewState();
}

class _ProductdetailViewState extends State<ProductdetailView>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ProductdetailController controller =
        Get.put<ProductdetailController>(ProductdetailController());

    return Scaffold(
      backgroundColor: kSystemNotificationTrayColor,
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
                            Get.back();
                          },
                          child: const SvgIcon("assets/ArrowLeft.svg")),
                      const Spacer(),
                      const SvgIcon("assets/BagNav.svg"),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      const SvgIcon(
                        "assets/Back.svg",
                        color: Colors.grey,
                      ),
                      const Spacer(),
                      Container(
                        height: 340,
                        width: 280,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(blurRadius: 2, color: Colors.grey)
                          ],
                          color: kBackgroundColor,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ImageSlider(
                              showTabIndicator: true,
                              tabIndicatorSelectedColor: kButtonBackgroundColor,
                              tabIndicatorColor: kBackgroundColor,
                              tabIndicatorHeight: 0,
                              width: 260,
                              height: 260,
                              tabController: tabController,
                              children: controller.images),
                        ),
                      ),
                      const Spacer(),
                      const SvgIcon("assets/Next.svg"),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              // height: MediaQuery.of(context).size.height * 0.509,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 0,
                    color: Colors.grey,
                  ),
                ],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Jacket Pullover Sweat Hoodie",
                              style: kHeadName1TestStyle,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "\$ 60",
                              style: kHeadName2TestStyle.copyWith(
                                  color: kButtonBackgroundColor),
                            ),
                          ],
                        ),
                        const Spacer(),
                        const SvgIcon(
                          "assets/Heart.svg",
                          color: Colors.red,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Size",
                      style: kHeadName2TestStyle,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 45,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: kSystemNotificationTrayColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 45,
                            width: MediaQuery.of(context).size.width * 0.15,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                "S",
                                style: kHeadName1TestStyle.copyWith(
                                    color: kHeading2Color),
                              ),
                            ),
                          ),
                          const Spacer(),
                          Container(
                            height: 45,
                            width: MediaQuery.of(context).size.width * 0.15,
                            decoration: BoxDecoration(
                              color: kButtonBackgroundColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                "M",
                                style: kHeadName1TestStyle.copyWith(
                                    color: Colors.white),
                              ),
                            ),
                          ),
                          const Spacer(),
                          Container(
                            height: 45,
                            width: MediaQuery.of(context).size.width * 0.15,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                "L",
                                style: kHeadName1TestStyle.copyWith(
                                    color: kHeading2Color),
                              ),
                            ),
                          ),
                          const Spacer(),
                          Container(
                            height: 45,
                            width: MediaQuery.of(context).size.width * 0.15,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                "XL",
                                style: kHeadName1TestStyle.copyWith(
                                    color: kHeading2Color),
                              ),
                            ),
                          ),
                          const Spacer(),
                          Container(
                            height: 45,
                            width: MediaQuery.of(context).size.width * 0.15,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                "XXL",
                                style: kHeadName1TestStyle.copyWith(
                                    color: kHeading2Color),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Color",
                      style: kHeadName2TestStyle,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 45,
                      width: double.infinity,
                      child: Row(
                        children: [
                          Container(
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(22.5),
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(22.5),
                              color: const Color(0XFFCACACA),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(22.5),
                              color: const Color(0XFFDEDEE0),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Seller",
                      style: kHeadName2TestStyle,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 70,
                      child: Row(
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                  image: AssetImage(
                                    "assets/Avatar.jpg",
                                  ),
                                )),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Shiba Store",
                                style: kHeadName1TestStyle,
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                "J&K, India",
                                style: kHeadName2TestStyle,
                              ),
                            ],
                          ),
                          const Spacer(),
                          Text(
                            "View Shop",
                            style: kHeadName2TestStyle.copyWith(
                                color: kButtonBackgroundColor),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 48,
                    ),
                    Container(
                      height: 64,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: kButtonBackgroundColor),
                      child: Center(
                        child: Text(
                          "Add To Cart",
                          style:
                              kHeadName1TestStyle.copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
