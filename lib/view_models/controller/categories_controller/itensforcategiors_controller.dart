import 'package:get/get.dart';
import 'package:the29029restaurant/data/response/status.dart';
import 'package:the29029restaurant/models/Categories_Model/itemsforcategories_model.dart';
import 'package:the29029restaurant/repository/Auth_Reposetory/auth_reposetory.dart';

class Itemforcategories_Controller extends GetxController {


  final _api = AuthRepository();

  final rxRequestStatus = Status.LOADING.obs ;
  final userList =ItemforcategoriesModel().obs ;
  RxString error = ''.obs;

  void setRxRequestStatus(Status _value) => rxRequestStatus.value = _value ;
  void setUserList(ItemforcategoriesModel _value) => userList.value = _value ;
  void setError(String _value) => error.value = _value ;


  void itemsforcategiorsapihit(){
    Map data={
      'method':'product_listing_api',
      'category_id':'356',
    };
    _api.itemforcategoriesapi(data).then((value){
      setRxRequestStatus(Status.COMPLETED);
      setUserList(value);
      print(value);

    }).onError((error, stackTrace){
      setError(error.toString());
      setRxRequestStatus(Status.ERROR);

    });
  }

}