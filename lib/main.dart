import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the29029restaurant/view/Splash.dart';
import 'package:the29029restaurant/view/location/location.dart';
import 'package:the29029restaurant/widgets/shared_prif.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await MySharedPreferences.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home:
      //Location1(),
      Splash(),
    );
  }
}
