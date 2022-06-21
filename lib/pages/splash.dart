import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState(){
    super.initState();
    _navigatetologin();
  }

  _navigatetologin() async{
    await Future.delayed(Duration(milliseconds: 1700), (){});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => LoginScreen())
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Image.asset("images/Fantasia.png",
          fit: BoxFit.cover
        ),
      ),
    );
  }
}
