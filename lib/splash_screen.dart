import 'dart:async';

import 'package:flutter/material.dart';
import 'package:practice_ui/welcome_screen.dart';

class Splash extends StatefulWidget{

  const Splash({super.key});

  @override
  State<Splash> createState() {
    return _SplashScreen();
  }
}

class _SplashScreen extends State<Splash> {

  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 2),
        () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Welcome() )),
    );
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Image.asset(
            'assets/images/logo.png',
          height: 200,
          width: 200,
        )
      ),
    );
  }
  
}