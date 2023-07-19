import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the29029restaurant/repository/Auth_Reposetory/auth_reposetory.dart';
import 'package:the29029restaurant/utils/utils.dart';
import 'package:the29029restaurant/view/createpassword.dart';
import 'package:the29029restaurant/view_models/controller/reserpassword/resetpassword_controller.dart';

class ResetpasswordOTP_controller extends GetxController {


  final _api = AuthRepository();

  // MySharedPreferences mySharedPreferences = MySharedPreferences();

  final pinController = TextEditingController().obs ;

  RxBool loading = false.obs;


  void ResetpasswordOTP_apihit(){
    loading.value = true ;
    Map data = {
      'email' : varificationemail,
      'otp' : pinController.value.text,

    };
       print(data);
    _api.ResetpasswordOTPapi(data).then((value){
      loading.value = false ;
if(value.status=="success"){
  Get.to( CreatePassword());
  Utils.snackBar('right', 'successfully');


}else{
  Utils.snackBar('Message', value.message.toString());
}



    }).onError((error, stackTrace){
      loading.value = false ;
      Utils.snackBar('incorrect','please retry otp');   // error.toString()
    });
  }
}