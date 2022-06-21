import 'package:flutter/material.dart';
import '../buttons/rounded_button.dart';
import '../buttons/rounded_input.dart';
import '../buttons/rounded_password_input.dart';
import '../../ui/buttons/rounded_button.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({
    Key? key,
    required this.isLogin,
    required this.animationDuration,
    required this.height,
    required this.width,
    required this.defaultLoginSize,
  }) : super(key: key);

  final bool isLogin;
  final Duration animationDuration;
  final double height, width;
  final double defaultLoginSize;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: isLogin ? 0.0 : 1.0,
      duration: animationDuration * 5,
      child: Visibility(
        visible: !isLogin,
        child: Align(
          alignment: Alignment.bottomCenter,
          child: SizedBox(
            width: width,
            height: defaultLoginSize,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 10),
                  const Text(
                    'Welcome',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  const SizedBox(height: 40),
                  Image.asset("images/witch4.png"),
                  SizedBox(height: 40),
                  RoundedInput(icon: Icons.mail, hint: 'Email'),
                  RoundedInput(icon: Icons.face_rounded, hint: 'Name'),
                  RoundedPasswordInput(hint: 'Password'),
                  SizedBox(height: 10),
                  RoundedButton(title: 'SIGN UP'),
                  SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
