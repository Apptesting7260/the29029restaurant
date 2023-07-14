import 'dart:async';
import 'package:flutter/material.dart';
import 'package:the29029restaurant/view/welcome.dart';


class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void initState() {
    super.initState();
    Timer(Duration(seconds:10), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>  Welcome(),
      ));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Image.asset("assets/images/Splash.jpg",height:800,width: 400,fit:BoxFit.fill),
    );
  }
}
