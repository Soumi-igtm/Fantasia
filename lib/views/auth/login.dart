import 'package:fantasia_new/controllers/auth/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../ui/components/cancel_button.dart';
import '../../ui/components/login_form.dart';
import '../../ui/components/register_form.dart';
import '../../ui/custom_colors.dart';

class Login extends GetView<LoginController> {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //double viewInset = MediaQuery.of(context).viewInsets.bottom; // we are using this to determine Keyboard is opened or not
    double defaultLoginSize = context.height - (context.height * 0.2);
    double defaultRegisterSize = context.height - (context.height * 0.1);

    controller.containerSize = Tween<double>(begin: context.height * 0.1, end: defaultRegisterSize)
        .animate(CurvedAnimation(parent: controller.animationController!, curve: Curves.linear));

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [
          // Lets add some decorations
          Positioned(
              top: 100,
              right: -50,
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color: kPrimaryColor),
              )),

          Positioned(
              top: -50,
              left: -50,
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: kPrimaryColor),
              )),

          // Cancel Button
          CancelButton(
            isLogin: controller.isLogin,
            animationDuration: controller.animationDuration,
            height: context.height,
            width: context.width,
            animationController: controller.animationController,
            tapEvent: controller.isLogin
                ? null
                : () {
                    // returning null to disable the button
                    controller.animationController!.reverse();

                    controller.isLogin = !controller.isLogin;
                  },
          ),

          // Login Form
          LoginForm(
              isLogin: controller.isLogin, animationDuration: controller.animationDuration, width: context.width, height: context.height, defaultLoginSize: defaultLoginSize),

          // Register Container
          AnimatedBuilder(
            animation: controller.animationController!,
            builder: (context, child) {
              if (controller.isLogin) {
                return buildRegisterContainer();
              } else if (!controller.isLogin) {
                return buildRegisterContainer();
              }

              // Returning empty container to hide the widget
              return Container();
            },
          ),

          // Register Form
          RegisterForm(
              isLogin: controller.isLogin,
              animationDuration: controller.animationDuration,
              height: context.height,
              width: context.width,
              defaultLoginSize: defaultRegisterSize),
        ],
      ),
    );
  }

  Widget buildRegisterContainer() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.infinity,
        height: controller.containerSize.value,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(100),
              topRight: Radius.circular(100),
            ),
            color: kBackgroundColor),
        alignment: Alignment.center,
        child: GestureDetector(
          onTap: !controller.isLogin
              ? null
              : () {
                  controller.animationController!.forward();

                  controller.isLogin = !controller.isLogin;
                },
          child: controller.isLogin
              ? Text(
                  "Don't have an account? Sign up",
                  style: TextStyle(color: kPrimaryColor, fontSize: 18),
                )
              : null,
        ),
      ),
    );
  }
}
