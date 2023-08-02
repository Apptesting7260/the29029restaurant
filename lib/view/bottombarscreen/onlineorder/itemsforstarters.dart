import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the29029restaurant/data/response/status.dart';
import 'package:the29029restaurant/res/components/general_exception.dart';
import 'package:the29029restaurant/res/components/internet_exceptions_widget.dart';
import 'package:the29029restaurant/view/bottombarscreen/onlineorder/card.dart';
import 'package:the29029restaurant/view/bottombarscreen/onlineorder/categories2.dart';
import 'package:the29029restaurant/view/bottombarscreen/onlineorder/details.dart';
import 'package:the29029restaurant/view_models/controller/categories_controller/itensforcategiors_controller.dart';

int? categoryid;
String? slug;

class StUi extends StatefulWidget {
  const StUi({super.key});

  @override
  State<StUi> createState() => _StUiState();
}

class _StUiState extends State<StUi> {
  Itemforcategories_Controller itemforcategories_Controller =
      Get.put(Itemforcategories_Controller());

  final FieldTextController = TextEditingController();

  void initState() {
    itemforcategories_Controller.itemsforcategiorsapihit();
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
            Get.to(() => Categories2());
          },
          child: Image.asset("assets/images/backbutton.png"),
        ),
        title: Text(
            // itemforcategories_Controller
            //     .userList
            //     .value.categoryTitle
            //     ![0]
            //     .toString(),
            "Items for Starters",
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
            padding: EdgeInsets.only(right: 20, left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: height * 0.02),
                TextFormField(
                  controller: FieldTextController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search_sharp,
                        color: Color(0xff911FDA),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Search",
                      hintStyle:
                          Theme.of(context).textTheme.bodyMedium?.copyWith(
                                fontSize: 14,
                                color: Color(0xff9796A1),
                                fontWeight: FontWeight.w300,
                                fontFamily: GoogleFonts.outfit().fontFamily,
                              ),
                      contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Color(0xffDCDCDC))),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Color(0xffDCDCDC))),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Color(0xffDCDCDC)))),
                ),
                SizedBox(height: height * 0.02),
                Obx(() {
                  switch (itemforcategories_Controller.rxRequestStatus.value) {
                    case Status.LOADING:
                      return const Center(child: CircularProgressIndicator());
                    case Status.ERROR:
                      if (itemforcategories_Controller.error.value ==
                          'No internet') {
                        return InterNetExceptionWidget(
                          onPress: () {},
                        );
                      } else {
                        return GeneralExceptionWidget(onPress: () {});
                      }
                    case Status.COMPLETED:
                      return GridView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: .6,
                            crossAxisSpacing: 12,
                            mainAxisSpacing: 12,
                            mainAxisExtent: 270,
                          ),
                          itemCount: itemforcategories_Controller
                              .userList.value.productDetails!.length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  categoryid = itemforcategories_Controller.userList.value
                                      .productDetails![index].productId;
                                  slug = itemforcategories_Controller.userList.value
                                      .productDetails![index].productSlug;
                                });

                                Get.to(() => Detalis());
                              },
                              child: Container(
                                height: height * 0.3,
                                width: width * 0.4,
                                decoration: BoxDecoration(
                                    color: Color(0xffF5F5F5),
                                    borderRadius: BorderRadius.circular(25)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(height: height * 0.02),
                                    Center(
                                        child:
                                     //   Image.asset("assets/drawericon/avocado sandwich (1).png")
                                            Image.network(
                                      itemforcategories_Controller
                                          .userList
                                          .value
                                          .productDetails![index]
                                          .productImg
                                          .toString(),
                                    )
                                    ),
                                    SizedBox(height: height * 0.01),
                                    Text(
                                      itemforcategories_Controller
                                          .userList
                                          .value
                                          .productDetails![index]
                                          .productTitle
                                          .toString(),
                                      //"Piyaza Chicken ",
                                      textAlign: TextAlign.center,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall
                                          ?.copyWith(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      height: height * 0.01,
                                    ),
                                    Text(
                                      itemforcategories_Controller
                                          .userList
                                          .value
                                          .productDetails![index]
                                          .productDiscription
                                          .toString(),
                                      //"Strips of Corn Fed Chic...",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall
                                          ?.copyWith(
                                              color: Color(0xff9796A1),
                                              fontWeight: FontWeight.w300),
                                    ),
                                    SizedBox(height: height * 0.01),
                                    RichText(
                                        text: TextSpan(children: [
                                          WidgetSpan(child: Padding(padding: EdgeInsets.only(
                                              bottom:3
                                          ),
                                            child:Text("£ ",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodySmall
                                                  ?.copyWith(
                                                fontSize: 8,
                                                  color: Color(0xff911FDA),
                                                  fontFamily: GoogleFonts.mulish().fontFamily,
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
                                              text:  itemforcategories_Controller.userList
                                                  .value.productDetails![0].productPrice
                                                  .toString(),
                                              //"11.55",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodySmall
                                                  ?.copyWith(
                                                  color: Color(0xff911FDA),
                                                  fontFamily: GoogleFonts.outfit().fontFamily,
                                                  fontWeight: FontWeight.w700))
                                        ]))
                                    // Text(
                                    //   itemforcategories_Controller
                                    //       .userList
                                    //       .value
                                    //       .productDetails![index]
                                    //       .productPrice
                                    //       .toString(),
                                    //   //"£11.55",
                                    //   textAlign: TextAlign.center,
                                    //   style: Theme.of(context)
                                    //       .textTheme
                                    //       .bodySmall
                                    //       ?.copyWith(
                                    //           color: Color(0xff911FDA),
                                    //           fontWeight: FontWeight.w700),
                                    // ),
                                  ],
                                ),
                              ),
                            );
                          });
                  }
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
