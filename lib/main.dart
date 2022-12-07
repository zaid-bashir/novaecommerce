import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:nova_ecommerce/app/data/Utils/appcolors.dart';
import 'app/routes/app_pages.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle.dark
        .copyWith(statusBarColor: kSystemNotificationTrayColor),
  );
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Nova Ecommerce",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
