
import 'package:get/get.dart';
import 'package:the29029restaurant/data/response/status.dart';
import 'package:the29029restaurant/models/Profile_Model/profile_model.dart';
import 'package:the29029restaurant/repository/Auth_Reposetory/auth_reposetory.dart';
import 'package:the29029restaurant/view/animation_screen.dart';
import 'package:the29029restaurant/view/login.dart';
import 'package:flutter/material.dart';
import '../../../models/AddressUpdateProfileModel/address_update_on_profile_model.dart';

RxString userid = ''.obs;


class AddressUpdateProfileController extends GetxController {
  final _api = AuthRepository();

  final rxRequestStatus = Status.LOADING.obs;
  final addressupdtpro = AddressUpdateModel().obs;
  RxString error = ''.obs;

  void setRxRequestStatus(Status _value) => rxRequestStatus.value = _value;
  void setUserList(AddressUpdateModel _value) => addressupdtpro.value = _value;
  void setError(String _value) => error.value = _value;


  final house_Controller = TextEditingController().obs;
  final street_Controller = TextEditingController().obs;
  final area_Controller = TextEditingController().obs;
  final country_Controller = TextEditingController().obs;
  final postcode_Controller = TextEditingController().obs;
  final state_Controller = TextEditingController().obs;
  final city_Controller = TextEditingController().obs;

  RxBool loading = false.obs;

  void addressupdateApiMethod(BuildContext context) {
    // loading.value = true ;
    Map data = {
      'user_id': userid.value,
      'house_number' : house_Controller.value.text,
      'street' : street_Controller.value.text,
      'area' : area_Controller.value.text,
      'country' : country_Controller.value.text,
      'postcode': postcode_Controller.value.text,
      'state':state_Controller.value.text,
      'city' :city_Controller.value.text,

    };

    _api.AddressUpdateApi(data).then((value) {
      setRxRequestStatus(Status.COMPLETED);
      setUserList(value);
      print(house_Controller.value);

    }).onError((error, stackTrace) {
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
