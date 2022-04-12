import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:m_news/app/routes/app_pages.dart';

import '../controllers/loader_controller.dart';

class LoaderView extends GetView<LoaderController> {
  const LoaderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          backgroundColor: Theme.of(context).primaryColor,
          body: SafeArea(
            child: InkWell(
              onTap: () => Get.toNamed(Routes.HOME),
              child: Center(
                child: Image.asset(
                  controller.count.value,
                  width: 80,
                  height: 80,
                ),
              ),
            ),
          ),
          bottomNavigationBar: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'vaisakhperumthody@gmail.com',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color.fromRGBO(120, 120, 120, 1),
                  fontFamily: 'Poppins',
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  height: 1),
            ),
          ),
        ));
  }
}
