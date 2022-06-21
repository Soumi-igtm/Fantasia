import 'package:animate_do/animate_do.dart';

import '../../controllers/auth/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../ui/common.dart';
import '../../ui/custom_colors.dart';

class Splash extends GetView<SplashController> {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          SizedBox.expand(
            child: Image.asset("images/splash_background.png", fit: BoxFit.cover),
          ),
          SpinPerfect(
            infinite: true,
            duration: const Duration(seconds: 10),
            child: Image.asset(
              "images/moon.png",
              fit: BoxFit.cover,
              height: context.width / 1.5,
              width: context.width / 1.5,
            ),
          ),
          Swing(
            infinite: true,
            duration: const Duration(seconds: 15),
            child: Image.asset(
              "images/flying_witch.png",
              fit: BoxFit.cover,
              height: context.width,
              width: context.width,
            ),
          ),
        ],
      ),
    );
  }
}
