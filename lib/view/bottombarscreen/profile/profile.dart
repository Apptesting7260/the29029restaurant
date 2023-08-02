import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the29029restaurant/data/response/status.dart';
import 'package:the29029restaurant/res/components/general_exception.dart';
import 'package:the29029restaurant/res/components/internet_exceptions_widget.dart';
import 'package:the29029restaurant/view_models/controller/Profile_Controller/profile_controller.dart';
import 'package:the29029restaurant/view_models/controller/Profile_Controller/update_controller.dart';
import 'package:the29029restaurant/widgets/my_button.dart';
import 'package:get/get.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  Profile_controller profile_controller = Get.put(Profile_controller());

  Update_controller update_controller = Get.put(Update_controller());

  var _formKey = GlobalKey<FormState>();
  var isLoading = false;
  void _submit() {
    final isValid = _formKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    update_controller.update_apihit();

    _formKey.currentState!.save();
  }

  @override
  void initState() {
    profile_controller.Profile_apihit();
    // TODO: implement initState
    super.initState();
  }

  bool passwordVisible = true;

  Future<void> showOptionsDialog(BuildContext context) {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          final height = MediaQuery.of(context).size.height;
          final width = MediaQuery.of(context).size.width;
          return AlertDialog(
              //title: Text("Choose"),
              content: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);

                        // txtphn.clear();
                        // txtemail.clear();
                        // txtpassword.clear();
                        // txtaddress.clear();
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image.asset('assets/drawericon/cross.png',
                            width: width * 0.04, height: height * 0.04),
                      ),
                    ),
                  ),
                  Text(
                    "Phone Number",
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.001),
                  TextFormField(
                    controller: update_controller.phonenumberController.value,

                    //txtphn,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Enter phone number",
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.w300,
                          color: Color(0xff9796A1),
                          fontSize: 14,
                          fontFamily: GoogleFonts.outfit().fontFamily,
                        ),
                        contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(color: Color(0xff9796A1))),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(color: Color(0xff9796A1))),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(color: Color(0xff9796A1)))),
                    onFieldSubmitted: (value) {},
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'enter the valid phonenumber';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  Text(
                    "Email-ID",
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.001),
                  TextFormField(
                    controller: update_controller.emailController.value,
                    //txtemail,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Enter your email",
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.w300,
                          color: Color(0xff9796A1),
                          fontSize: 14,
                          fontFamily: GoogleFonts.outfit().fontFamily,
                        ),
                        contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(color: Color(0xff9796A1))),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(color: Color(0xff9796A1))),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(color: Color(0xff9796A1)))),
                    onFieldSubmitted: (value) {},
                    validator: (value) {
                      if (value!.isEmpty ||
                          !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                              .hasMatch(value)) {
                        return 'enter the vaild email';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  Text(
                    "Password",
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.001),
                  TextFormField(
                    controller: update_controller.passwordController.value,
                    //txtpassword,
                    obscureText: passwordVisible,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Enter your password",
                        hintStyle: TextStyle(
                            color: Color(0xff9796A1),
                            fontSize: 14,
                            fontFamily: GoogleFonts.outfit().fontFamily),
                        suffixIcon: IconButton(
                          icon: Icon(
                            passwordVisible
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: Color(0xffD0D2D1),
                          ),
                          onPressed: () {
                            setState(
                              () {
                                passwordVisible = !passwordVisible;
                              },
                            );
                          },
                        ),
                        contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(color: Color(0xff9796A1))),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(color: Color(0xff9796A1))),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(color: Color(0xff9796A1)))),
                    onFieldSubmitted: (value) {},
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'enter the valid password';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.visiblePassword,
                    textInputAction: TextInputAction.done,
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  Text(
                    "Address",
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.001),
                  TextFormField(
                    controller: update_controller.addressController.value,
                    //txtaddress,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Enter your address",
                        hintStyle: TextStyle(
                            color: Color(0xff9796A1),
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            fontFamily: GoogleFonts.outfit().fontFamily),
                        contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(color: Color(0xff9796A1))),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(color: Color(0xff9796A1))),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(color: Color(0xff9796A1)))),
                    onFieldSubmitted: (value) {},
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'enter the valid address';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                  Obx(() =>Center(
                    child: MyButton(
                        loading: update_controller.loading.value,
                        bgColor: Color(0xff41004C),
                        title: "Update",
                        onTap: () {
                          setState(() {
                            // update_controller.emailController.toString();
                            Navigator.of(context).pop();
                            _submit();
                          });
                        },
                        height:height*0.05,
                        width:width*0.3),
                  ), ),

                ],
              ),
            ),
          ));
        });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {

          },
          child: Image.asset("assets/images/backbutton.png"),
        ),
        title: Text("Profile",
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(fontSize: 18, fontWeight: FontWeight.w600)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 20, left: 20),
        child: SafeArea(child: SingleChildScrollView(
          child: Obx(() {
            switch (profile_controller.rxRequestStatus.value) {
              case Status.LOADING:
                return const Center(child: CircularProgressIndicator());
              case Status.ERROR:
                if (profile_controller.error.value == 'No internet') {
                  return InterNetExceptionWidget(
                    onPress: () {},
                  );
                } else {
                  return GeneralExceptionWidget(onPress: () {});
                }
              case Status.COMPLETED:
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: height * 0.03),
                    Container(
                      height: height*0.1,
                      width:width,
                      decoration: BoxDecoration(
                        color: Color(0xff41004C),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ListTile(
                        leading: CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage("assets/images/user.png"),
                        ),
                        title: Text(
                            profile_controller
                                .userList.value.userDetails![0].userName
                                .toString(),

                            // "Farion Wick",
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18,
                                    fontFamily:
                                        GoogleFonts.outfit().fontFamily)),
                        subtitle: Text(
                            profile_controller
                                .userList.value.userDetails![0].userEmail
                                .toString(),
                          //  "userdemo@gmail.com",
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge
                                ?.copyWith(
                                    fontSize: 11,
                                    color: Colors.white,
                                    fontFamily:
                                        GoogleFonts.inter().fontFamily)),
                      ),
                    ),
                    SizedBox(height:height*0.025),
                    ListTile(
                      //horizontalTitleGap: 1,
                      leading: Image.asset("assets/images/call.png"),
                      title: Text("Phone Number",
                          style:
                              Theme.of(context).textTheme.titleSmall?.copyWith(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                    fontFamily: GoogleFonts.outfit().fontFamily,
                                  )),
                      subtitle: Text(
                          profile_controller
                              .userList.value.userDetails![0].userPhonenumber
                              .toString(),
                          //txtphn.text,
                          // "9876543210",
                          style:
                              Theme.of(context).textTheme.titleSmall?.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff9796A1),
                                    fontFamily: GoogleFonts.outfit().fontFamily,
                                  )),
                    ),
                    ListTile(
                      leading: Image.asset("assets/images/email.png"),
                      title: Text("Email ID",
                          style:
                              Theme.of(context).textTheme.titleSmall?.copyWith(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                    fontFamily: GoogleFonts.outfit().fontFamily,
                                  )),
                      subtitle: Text(
                          profile_controller
                              .userList.value.userDetails![0].userEmail
                              .toString(),
                          // "userdemo@gmail.com",
                          style:
                              Theme.of(context).textTheme.titleSmall?.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff9796A1),
                                    fontFamily: GoogleFonts.outfit().fontFamily,
                                  )),
                    ),
                    ListTile(
                      leading: Image.asset("assets/images/lock.png"),
                      title: Text("Password",
                          style:
                              Theme.of(context).textTheme.titleSmall?.copyWith(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                    fontFamily: GoogleFonts.outfit().fontFamily,
                                  )),
                      subtitle: Text(
                          profile_controller
                              .userList.value.userDetails![0].userPassword
                              .toString(),
                          // "Chnage Password",
                          style:
                              Theme.of(context).textTheme.titleSmall?.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff9796A1),
                                    fontFamily: GoogleFonts.outfit().fontFamily,
                                  )),
                    ),
                    ListTile(
                      leading: Image.asset("assets/images/locations.png"),
                      title: Text("Address",
                          style:
                              Theme.of(context).textTheme.titleSmall?.copyWith(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                    fontFamily: GoogleFonts.outfit().fontFamily,
                                  )),
                      subtitle: Text(
                          profile_controller
                              .userList.value.userDetails![0].userAddress
                              .toString(),
                          // "D NO.27-33-1, Kamaraju Centre, Gudavallivari Street, Governerpet, Vijayawada-520002",
                          style:
                              Theme.of(context).textTheme.titleSmall?.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff9796A1),
                                    fontFamily: GoogleFonts.outfit().fontFamily,
                                  )),
                    ),
                    SizedBox(height: height*0.05),
                    Obx(() =>Center(
                      child: MyButton(
                          loading: profile_controller.loading.value,
                          title: "Edit",
                          txtStyle: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                              fontFamily: GoogleFonts.outfit().fontFamily),
                          bgColor: Color(0xff41004C),
                          onTap: () {
                            showOptionsDialog(context);
                          },
                          height: height * .07,
                          width: width * 0.5),
                    ), ),
                    SizedBox(height: height * 0.05)
                  ],
                );
            }
          }),
        )),
      ),
    );
  }
}
