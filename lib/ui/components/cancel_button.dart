import 'package:flutter/material.dart';

import '../../ui/custom_colors.dart';


class CancelButton extends StatelessWidget {
  const CancelButton({
    Key? key,
    required this.isLogin,
    required this.animationDuration,
    required this.height,
    required this.width,
    required this.animationController,
    required this.tapEvent
  }) : super(key: key);

  final bool isLogin;
  final Duration animationDuration;
  final double height;
  final double width;
  final AnimationController? animationController;
  final GestureTapCallback? tapEvent;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: isLogin ? 0.0 : 1.0,
      duration: animationDuration,
      child: Align(
        alignment: Alignment.topCenter,
        child: Container(
          width: width,
          height: height * 0.1,
          alignment: Alignment.bottomCenter,

          child: IconButton(
            icon: Icon(Icons.close),
            onPressed: tapEvent,
            color: kPrimaryColor,
          ),
        ),
      ),
    );
  }
}