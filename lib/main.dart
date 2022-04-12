import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:m_news/helper/contrains.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: primaryColor,
          fontFamily: 'Poppins'),
    ),
  );
}
