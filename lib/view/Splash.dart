import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:the29029restaurant/view/welcome.dart';


class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void initState() {
    super.initState();
    Timer(Duration(milliseconds: 3000), () {
      Get.to(Welcome());
    });
  }
  @override
  Widget build(BuildContext context) {
    final height= MediaQuery.of(context).size.height;
    final width= MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body:
     Container(
       height: height,width: width,
       child: Image.asset("assets/images/Splash.jpg",fit:BoxFit.fill),
     )
    );
  }
}
