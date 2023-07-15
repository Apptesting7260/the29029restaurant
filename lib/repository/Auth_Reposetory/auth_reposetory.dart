import 'dart:ui';

import 'package:the29029restaurant/data/network/network_api_services.dart';
import 'package:the29029restaurant/models/Drawer_Models/FollowUS_Model/followus_model.dart';
import 'package:the29029restaurant/models/Drawer_Models/PhotoGallery_Model/photogallery_model.dart';
import 'package:the29029restaurant/models/Login_Model/login_model.dart';
import 'package:the29029restaurant/models/Party_Menu_Model/party_menu_model.dart';
import 'package:the29029restaurant/models/Sign_up_Model/sign_up_model.dart';
import 'package:the29029restaurant/models/Starters_Model/starters_model.dart';
import 'package:the29029restaurant/res/app_url/app_url.dart';



class AuthRepository {

  final _apiService  = NetworkApiServices() ;


  Future<SignUpModel> Signupapi(var data) async{
    dynamic response = await _apiService.postApi(data, AppUrl.signupapi);
    return SignUpModel.fromJson(response);
  }

  Future<LoginModel> Loginapi(var data) async{
    dynamic response = await _apiService.postApi(data, AppUrl.loginapi);
    return LoginModel.fromJson(response);
  }


  Future<PartyMenuModel> PartyMenuapi(var data) async{
    dynamic response = await _apiService.postApi(data, AppUrl.partymenuapi);
    return PartyMenuModel.fromJson(response);
  }


  Future<StartersModel> Startersapi(var data) async{
    dynamic response = await _apiService.postApi(data, AppUrl.startersapi);
    return StartersModel.fromJson(response);
  }

  Future<PhotoGalleryModel> Photogalleryapi(var data) async{
    dynamic response = await _apiService.postApi(data, AppUrl.photogalleryapi);
    return PhotoGalleryModel.fromJson(response);
  }


  Future<FollowUSModel> Followusapi(var data) async{
    dynamic response = await _apiService.postApi(data, AppUrl.followusapi);
    return FollowUSModel.fromJson(response);
  }






}