import 'package:get/get.dart';

class SplashController extends GetxController with GetTickerProviderStateMixin {
  @override
  void onInit() {
    checkAuth();
    super.onInit();
  }

  checkAuth() async {
    Future.delayed(const Duration(milliseconds: 2500), () {
      Get.offAllNamed("/login");
    });
  }
}
