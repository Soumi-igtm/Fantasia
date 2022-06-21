import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController with GetTickerProviderStateMixin {
  RxBool isLogin = true.obs;
  late Animation<double> containerSize;
  AnimationController? animationController;
  Duration animationDuration = const Duration(milliseconds: 270);

  @override
  void onInit() {
    animationController = AnimationController(vsync: this, duration: animationDuration);
    super.onInit();
  }

  @override
  void onClose() {
    animationController!.dispose();
    super.onClose();
  }
}
