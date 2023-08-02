import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the29029restaurant/repository/Auth_Reposetory/auth_reposetory.dart';
import 'package:the29029restaurant/utils/utils.dart';
import 'package:the29029restaurant/view/bottomnavigationbar/tab_screen.dart';
import 'package:the29029restaurant/widgets/shared_prif.dart';

class Login_controller extends GetxController {

  
  final _api = AuthRepository();

  final emailController = TextEditingController().obs ;
  final passwordController = TextEditingController().obs ;

  final emailFocusNode = FocusNode().obs;
  final passwordFocusNode = FocusNode().obs;

  RxBool loading = false.obs;


  void Login_apihit()async{
    loading.value = true ;
    Map data = {
      'username' : emailController.value.text,
      'password' : passwordController.value.text

    };

    _api.Loginapi(data).then((value){
      loading.value = false ;

      //MySharedPreferences().toString("token",value);//yha key and keyvalue and my shareprefancesuse as

      // MySharedPreferences.localStorage?.setString(
      //   MySharedPreferences.userId, parse[""][""].toString());



        // MySharedPreferences.localStorage?.setString(
        //     MySharedPreferences.userId, parse["user_data"]["id"].toString());


      Get.to(TabScreen(index:0,));

      Utils.snackBar('Login', 'Login successfully');


    }).onError((error, stackTrace){
      loading.value = false ;
      Utils.snackBar('incorrect','please check email/password');   // error.toString()
    });
  }
}