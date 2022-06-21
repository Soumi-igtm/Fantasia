import 'package:get/get.dart';

import '../controllers/auth/login_controller.dart';
import '../controllers/auth/splash_controller.dart';


class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<SplashController>(SplashController());
  }
}

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController());
  }
}