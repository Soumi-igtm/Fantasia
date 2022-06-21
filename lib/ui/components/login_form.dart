import 'package:flutter/material.dart';

import '../buttons/rounded_button.dart';
import '../buttons/rounded_input.dart';
import '../buttons/rounded_password_input.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
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
      opacity: isLogin ? 1.0 : 0.0,
      duration: animationDuration * 4,
      child: Align(
        alignment: Alignment.center,
        child: SizedBox(
          width: width,
          height: defaultLoginSize,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Welcome Back',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                SizedBox(height: 40),
                Center(child: Image.asset("images/witch3.png", width: width / 1.5)),
                SizedBox(height: 40),
                RoundedInput(icon: Icons.mail, hint: 'Email'),
                RoundedPasswordInput(hint: 'Password'),
                SizedBox(height: 10),
                RoundedButton(title: 'LOGIN'),
                SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
