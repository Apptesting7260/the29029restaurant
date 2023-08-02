import 'package:get/get.dart';
import 'package:the29029restaurant/data/response/status.dart';
import 'package:the29029restaurant/models/Categories_Model/subcategories_model.dart';
import 'package:the29029restaurant/repository/Auth_Reposetory/auth_reposetory.dart';

class Subcategories_Controller extends GetxController {


  final _api = AuthRepository();

  final rxRequestStatus = Status.LOADING.obs ;
  final userList =CategoriessubModel().obs ;
  RxString error = ''.obs;

  void setRxRequestStatus(Status _value) => rxRequestStatus.value = _value ;
  void setUserList(CategoriessubModel _value) => userList.value = _value ;
  void setError(String _value) => error.value = _value ;


  void subcategoriespihit(){
    Map data={
      'method':'product_sub_category_api',
      'category_id':'341',
    };
    _api.Subcategoriesapi(data).then((value){
      setRxRequestStatus(Status.COMPLETED);
      setUserList(value);
      print(value);

    }).onError((error, stackTrace){
      setError(error.toString());
      setRxRequestStatus(Status.ERROR);

    });
  }

}