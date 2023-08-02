import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the29029restaurant/data/response/status.dart';
import 'package:the29029restaurant/res/components/general_exception.dart';
import 'package:the29029restaurant/res/components/internet_exceptions_widget.dart';
import 'package:the29029restaurant/view/bottombarscreen/onlineorder/itemsforstarters.dart';
import 'package:the29029restaurant/view/bottombarscreen/onlineorder/card.dart';
import 'package:the29029restaurant/view_models/controller/categories_controller/singleitemproucted_controller.dart';
import 'package:the29029restaurant/widgets/my_button.dart';

class Detalis extends StatefulWidget {
  const Detalis({super.key});
  @override
  State<Detalis> createState() => _DetalisState();
}

class _DetalisState extends State<Detalis> {
  Singleitemproducted_Controller singleitemproducted_Controller =
      Get.put(Singleitemproducted_Controller());

  void initState() {
    singleitemproducted_Controller.singleitemsprouductedapihit();
    super.initState();
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
            Get.to(() => StUi());
          },
          child: Image.asset("assets/images/backbutton.png"),
        ),
        title: Text("Details",
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(fontSize: 18, fontWeight: FontWeight.w600)),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Get.to(() => Card_Page());
              },
              icon: Icon(
                Icons.shopping_cart_outlined,
                color: Color(0xff911FDA),
              ))
        ],
      ),
      body: SafeArea(
          child: SingleChildScrollView(
              child: Padding(
        padding: EdgeInsets.only(
          right: 20,
          left: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: height * 0.03),
            Obx(() {
              switch (singleitemproducted_Controller.rxRequestStatus.value) {
                case Status.LOADING:
                  return const Center(child: CircularProgressIndicator());
                case Status.ERROR:
                  if (singleitemproducted_Controller.error.value ==
                      'No internet') {
                    return InterNetExceptionWidget(
                      onPress: () {},
                    );
                  } else {
                    return GeneralExceptionWidget(onPress: () {});
                  }
                case Status.COMPLETED:
                  return Center(
                    child: Container(
                        height: height * 0.6,
                        width: width * 0.83,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color(0xffF5F5F5)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(height: height * 0.03),
                            Container(
                                height: height * 0.3,
                                width: width * 0.6,
                                child: Image.network(
                                  singleitemproducted_Controller.userList.value
                                      .singleProduct![0].productImg
                                      .toString(),
                                )
                                // Image.asset(
                                //   "assets/drawericon/iii.png",
                                //   fit: BoxFit.fill,
                                // ),
                                ),
                            SizedBox(height: height * 0.02),
                            Text(
                              singleitemproducted_Controller
                                  .userList.value.singleProduct![0].menuTitle
                                  .toString(),

                              //"Piyaza Chicken",
                              textAlign: TextAlign.center,
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall
                                  ?.copyWith(
                                      color: Color(
                                        0xff32324D,
                                      ),
                                      fontSize: 22,
                                      fontWeight: FontWeight.w500),
                            ),
                            SizedBox(height: height * 0.02),
                            Text(
                              singleitemproducted_Controller.userList.value
                                  .singleProduct![0].menuDiscription
                                  .toString(),

                              // "Strips of Corn Fed Chicken breast cooked \n"
                              // "in a jalifrasiee style sauce with onion and \n"
                              // "green chilies, accompanied with light\n"
                              // "herbed rice.",
                              textAlign: TextAlign.center,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                      color: Color(0xff9796A1),
                                      fontWeight: FontWeight.w300),
                            ),
                            SizedBox(height: height * 0.03),
                            RichText(
                                text: TextSpan(children: [
                                  WidgetSpan(child: Padding(padding: EdgeInsets.only(
                                    bottom:5
                                  ),
                                    child:Text("£ ",style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge
                                        ?.copyWith(
                                        color: Color(0xff911FDA),
                                        fontSize: 14,
                                        fontFamily:
                                        GoogleFonts.mulish().fontFamily,
                                        fontWeight: FontWeight.w700) ,) ,
                                  ),
                                  ),
                                  // TextSpan(
                                  //     text: "£",
                                  //     style: Theme.of(context)
                                  //         .textTheme
                                  //         .bodyLarge
                                  //         ?.copyWith(
                                  //         color: Color(0xff911FDA),
                                  //         fontSize: 14,
                                  //         fontFamily:
                                  //         GoogleFonts.mulish().fontFamily,
                                  //         fontWeight: FontWeight.w700)),

                              TextSpan(
                                  text: singleitemproducted_Controller.userList
                                      .value.singleProduct![0].productPrice
                                      .toString(),
                                  //"11.55",
                                  style: Theme.of(context)
                                      .textTheme
                                      .displayLarge
                                      ?.copyWith(
                                          color: Color(0xff911FDA),
                                          fontSize: 24,
                                          fontFamily:
                                              GoogleFonts.outfit().fontFamily,
                                          fontWeight: FontWeight.w700))
                            ]))
                          ],
                        )),
                  );
              }
            }),
            SizedBox(height: height / 30),
            MyButton(
                bgColor: Color(0xff41004C),
                side: BorderSide(color: Color(0xff41004C)),
                title: "Add to Card",
                txtStyle: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    fontFamily: GoogleFonts.outfit().fontFamily),
                onTap: () {
                  Get.to(() => Card_Page());
                },
                height: height * .07,
                width: width * 0.5),
            SizedBox(height: height / 59),
            MyButton(
                bgColor: Color(0xff911FDA),
                side: BorderSide(color: Color(0xff911FDA)),
                title: "Buy Now",
                txtStyle: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    fontFamily: GoogleFonts.outfit().fontFamily),
                onTap: () {
                  Get.to(() => Card_Page());
                },
                height: height * .07,
                width: width * 0.5)
          ],
        ),
      ))),
    );
  }
}
