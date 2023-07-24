import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:the29029restaurant/repository/Auth_Reposetory/auth_reposetory.dart';
import 'package:the29029restaurant/utils/utils.dart';
import 'package:the29029restaurant/view/bottomnavigationbar/tab_screen.dart';

class Login_controller extends GetxController {

  
  final _api = AuthRepository();

   // MySharedPreferences mySharedPreferences = MySharedPreferences();

  final emailController = TextEditingController().obs ;
  final passwordController = TextEditingController().obs ;

  final emailFocusNode = FocusNode().obs;
  final passwordFocusNode = FocusNode().obs;

  RxBool loading = false.obs;


  void Login_apihit()async{
    //SharedPreferences prefs = await SharedPreferences.getInstance();
    loading.value = true ;
    Map data = {

      'email' : emailController.value.text,
      'password' : passwordController.value.text

    };

    _api.Loginapi(data).then((value){
      loading.value = false ;
      //prefs.setString("", value)    yha key and keyvalue and my shareprefancesuse as
      Get.to(TabScreen(index:0,));

      Utils.snackBar('Login', 'Login successfully');


    }).onError((error, stackTrace){
      loading.value = false ;
      Utils.snackBar('incorrect','please check email/password');   // error.toString()
    });
  }
}