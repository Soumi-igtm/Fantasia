import 'package:fantasia_new/pages/login.dart';
import 'package:fantasia_new/pages/splash.dart';
import 'package:fantasia_new/ui/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fantasia',
      theme: ThemeData(
          primaryColor: kPrimaryColor,
          textTheme: GoogleFonts.robotoTextTheme(Theme.of(context).textTheme)
      ),
      routes: {
        "/": (context) => const Splash(),
        "/login": (context) => LoginScreen(),
      },
      initialRoute: "/",
    );
  }
}

