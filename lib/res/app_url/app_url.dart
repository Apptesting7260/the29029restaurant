

class AppUrl {
  static const String server ="https://www.the29029restaurant.com/";
  static const String baseurl = "${server}wp-json/myplugin/v1/";


  static const String signupapi = '${baseurl}registeration-api';// registeration
  static const String loginapi = '${baseurl}login-api'; //login
  static const String resetpasswordapi = '${baseurl}resetpass-api'; //email
  static const String resetpasswordotp = '${baseurl}resetpass_otp_verify-api'; //otp
  static const String createpassword = '${baseurl}resetpass_change-api?'; //same password


  static const String homepage='${baseurl}home_page-api';
  static const String menueapi='${baseurl}menu_bar-api';
  static const String onlineorderapi='${baseurl}take_away_menu-api';
  static const String partymenuapi='${baseurl}party_menu-api';
  static const String startersapi='${baseurl}party_menu_single-api';


  static const String photogalleryapi = '${baseurl}photos_gallery-api';
  static const String followusapi = '${baseurl}follow_us-api';
  static const String  contactusapi ='${baseurl}contact_page-api';
  static const String  contactdetailsapi ='${baseurl}contact_details-api';
  static const String  addreviewapi ='${baseurl}add_review-api';



  static const String  bookatableapi ='${baseurl}booking_table-api';


  static const String  profileapi ='${baseurl}user_profile-api';
  static const String  profileupdateapi ='${baseurl}user_profile_update-api';





}