import 'package:get/get.dart';
import 'package:m_news/app/routes/app_pages.dart';

class LoaderController extends GetxController {
  final count = "assets/icons/logo.png".obs;
  @override
  void onInit() {
    super.onInit();
    Future.delayed(const Duration(seconds: 1), () {
      Get.toNamed(Routes.HOME);
    });
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
