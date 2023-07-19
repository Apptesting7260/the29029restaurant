import 'dart:ui';

import 'package:the29029restaurant/data/network/network_api_services.dart';
import 'package:the29029restaurant/models/Addreview_Model/addreview_model.dart';
import 'package:the29029restaurant/models/Bookatable_Model/bookatable_model.dart';
import 'package:the29029restaurant/models/Createpass_Model/createpass_model.dart';
import 'package:the29029restaurant/models/Drawer_Models/ContactUs_Model/contactdetals_model.dart';
import 'package:the29029restaurant/models/Drawer_Models/ContactUs_Model/contactus_model.dart';
import 'package:the29029restaurant/models/Drawer_Models/FollowUS_Model/followus_model.dart';
import 'package:the29029restaurant/models/Drawer_Models/PhotoGallery_Model/photogallery_model.dart';
import 'package:the29029restaurant/models/Login_Model/login_model.dart';
import 'package:the29029restaurant/models/Party_Menu_Model/party_menu_model.dart';
import 'package:the29029restaurant/models/Profile_Model/profile_model.dart';
import 'package:the29029restaurant/models/Profile_Model/update_model.dart';
import 'package:the29029restaurant/models/ResetpassOTP_Model/reserpassotp_model.dart';
import 'package:the29029restaurant/models/Resetpassword_Model/resetpassword_model.dart';
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

  Future<ResetpasswordModel> Resetpasswordapi(var data) async{
    dynamic response = await _apiService.postApi(data, AppUrl.resetpasswordapi);
    return ResetpasswordModel.fromJson(response);
  }

  Future<ResetpassOTPModel> ResetpasswordOTPapi(var data) async{
    dynamic response = await _apiService.postApi(data, AppUrl.resetpasswordotp);
    return ResetpassOTPModel.fromJson(response);
  }

  Future<CreatepassModel> Createpassapi(var data) async{
    dynamic response = await _apiService.postApi(data, AppUrl.createpassword);
    return CreatepassModel.fromJson(response);
  }





  Future<PartyMenuModel> PartyMenuapi(var data) async{
    dynamic response = await _apiService.postApi(data, AppUrl.partymenuapi);
    return PartyMenuModel.fromJson(response);
  }

  Future<StartersModel> Startersapi(var data) async{
    dynamic response = await _apiService.postApi(data, AppUrl.startersapi);
    return StartersModel.fromJson(response);
  }

  //  Drawer
  Future<PhotoGalleryModel> Photogalleryapi(var data) async{
    dynamic response = await _apiService.postApi(data, AppUrl.photogalleryapi);
    return PhotoGalleryModel.fromJson(response);
  }

  Future<FollowUSModel> Followusapi(var data) async{
    dynamic response = await _apiService.postApi(data, AppUrl.followusapi);
    return FollowUSModel.fromJson(response);
  }

  Future<ContactUsModel> Contactususapi(var data) async{
    dynamic response = await _apiService.postApi(data, AppUrl.contactusapi);
    return ContactUsModel.fromJson(response);
  }
  Future<ContactdetailsModel> Contactdetailsapi(var data) async{
    dynamic response = await _apiService.postApi(data, AppUrl.contactdetailsapi);
    return ContactdetailsModel.fromJson(response);
  }

  Future<AddreviewModel> Addreviewapi(var data) async{
    dynamic response = await _apiService.postApi(data, AppUrl.addreviewapi);
    return AddreviewModel.fromJson(response);
  }

  // BookATabale BottomBar

  Future<BookatableModel> Bookatableapiusapi(var data) async{
    dynamic response = await _apiService.postApi(data, AppUrl.bookatableapi);
    return BookatableModel.fromJson(response);
  }

  // Profile/Edit BottomBar

  Future<ProfileModel> Profileapi(var data) async{
    dynamic response = await _apiService.postApi(data, AppUrl.profileapi);
    return ProfileModel.fromJson(response);
  }
  Future<UpdateModel> Updateapi(var data) async{
    dynamic response = await _apiService.postApi(data, AppUrl.profileupdateapi);
    return UpdateModel.fromJson(response);
  }



}