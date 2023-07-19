import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'package:the29029restaurant/repository/Auth_Reposetory/auth_reposetory.dart';

import 'package:the29029restaurant/res/routes/routes_name.dart';
import 'package:the29029restaurant/utils/utils.dart';
import 'package:the29029restaurant/view/login.dart';
import 'package:the29029restaurant/view_models/controller/user_preference/user_prefrence_view_model.dart';

class Bookatable_controller extends GetxController {


  final _api = AuthRepository();

  final fullnameController = TextEditingController().obs ;
  final emailController = TextEditingController().obs ;
  final phonenumberController = TextEditingController().obs ;
  final messageController = TextEditingController().obs ;

  final dateController=TextEditingController().obs;


  final emailFocusNode = FocusNode().obs;
  final passwordFocusNode = FocusNode().obs;

  RxBool loading = false.obs;


  void bookatable_apihit(){
    loading.value = true ;
    Map data = {
      'booking_table_method':'booking_table_api',
      'name' : fullnameController.value.text,
      'email' : emailController.value.text,
      'phone_number' : phonenumberController.value.text,
      'message' : messageController.value.text,
      'booking_table_date':'2023-07-15',                       //,
      'booking_table_time': '21:30',
      'booking_party_people' : '2',
      'REMOTE_ADDR' : '49.36.234.97',

    };
    print(data);
    _api.Signupapi(data).then((value){
      loading.value = false ;

      //Get.to(LoginPage());

      Utils.snackBar('Successfully', 'Book the Table');


    }).onError((error, stackTrace){
      loading.value = false ;
      Utils.snackBar('try again','retry book the table');  // error.toString()
    });
  }
}