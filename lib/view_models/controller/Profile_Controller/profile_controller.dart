import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:the29029restaurant/data/response/status.dart';
import 'package:the29029restaurant/models/Profile_Model/profile_model.dart';
import 'package:the29029restaurant/repository/Auth_Reposetory/auth_reposetory.dart';
import 'package:the29029restaurant/res/routes/routes_name.dart';
import 'package:the29029restaurant/utils/utils.dart';
import 'package:the29029restaurant/view_models/controller/user_preference/user_prefrence_view_model.dart';

class Profile_controller extends GetxController {


  final _api = AuthRepository();

  final rxRequestStatus = Status.LOADING.obs ;
  final userList =ProfileModel().obs ;
  RxString error = ''.obs;

  void setRxRequestStatus(Status _value) => rxRequestStatus.value = _value ;
  void setUserList(ProfileModel _value) => userList.value = _value ;
  void setError(String _value) => error.value = _value ;


  // final phonenumberController = TextEditingController().obs ;
  // final emailController = TextEditingController().obs ;
  // final passwordController = TextEditingController().obs ;
  // final addressController = TextEditingController().obs ;


  RxBool loading = false.obs;


  void Profile_apihit(){
   // loading.value = true ;
    Map data = {
      'user_profile' : 'user_profile_api',
      'user_id': '9'

    };

    _api.Profileapi(data).then((value){
      setRxRequestStatus(Status.COMPLETED);
      setUserList(value);
    }).onError((error, stackTrace){
      setError(error.toString());
      setRxRequestStatus(Status.ERROR);

    });





//     _api.Profileapi(data).then((value){
//       loading.value = false ;
//       //Get.to(LoginPage());
// print(value);
//       Utils.snackBar('Signup', 'Signup successfully');
//
//
//     }).onError((error, stackTrace){
//       loading.value = false ;
//       Utils.snackBar('already exit account','please check because already sign up');  // error.toString()
//     });
  }
}