import 'package:flutter/material.dart';
import 'dart:math' as math;

AnimatedBuilder rotateWidget({required AnimationController controller, required Widget child, double speed = 1.0}) => AnimatedBuilder(
      animation: controller,
      builder: (_, child) {
        return Transform.rotate(
          angle: controller.value * speed * math.pi,
          child: child,
        );
      },
      child: child,
    );
