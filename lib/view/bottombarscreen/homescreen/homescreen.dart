import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the29029restaurant/data/response/status.dart';
import 'package:the29029restaurant/res/components/general_exception.dart';
import 'package:the29029restaurant/res/components/internet_exceptions_widget.dart';
import 'package:the29029restaurant/view/bottombarscreen/menu/onlineorder2.dart';
import 'package:the29029restaurant/view/drawerscreen/aboutus.dart';
import 'package:the29029restaurant/view/drawerscreen/addreview.dart';
import 'package:the29029restaurant/view/drawerscreen/clientsays.dart';
import 'package:the29029restaurant/view/drawerscreen/fanwall.dart';
import 'package:the29029restaurant/view/drawerscreen/followus.dart';
import 'package:the29029restaurant/view/drawerscreen/location.dart';
import 'package:the29029restaurant/view/drawerscreen/photogallery.dart';
import 'package:the29029restaurant/view/login.dart';
import 'package:the29029restaurant/view_models/controller/home_page/home_page_controller.dart';
import 'package:the29029restaurant/widgets/my_button.dart';
import '../../drawerscreen/contactus.dart';
import '../../drawerscreen/gps.dart';
import '../../drawerscreen/loyalty.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Home_controller home_controller = Get.put(Home_controller());

  @override
  void initState() {
    // TODO: implement initState
    home_controller.homeapihit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage("assets/images/user.png"),
            )
          ],
        ),
        leading: Builder(
          builder: (BuildContext context) {
            return GestureDetector(
              onTap: () {
                Scaffold.of(context).openDrawer();
                MaterialLocalizations.of(context).openAppDrawerTooltip;
              },
              child: Image.asset("assets/images/drawer.png"),
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: SafeArea(child: Obx(() {
              switch (home_controller.rxRequestStatus.value) {
                case Status.LOADING:
                  return const Center(child: CircularProgressIndicator());
                case Status.ERROR:
                  if (home_controller.error.value == 'No internet') {
                    return InterNetExceptionWidget(
                      onPress: () {},
                    );
                  } else {
                    return GeneralExceptionWidget(onPress: () {});
                  }
                case Status.COMPLETED:
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: height * 0.001,
                      ),
                      Text(
                        "What would you like \n to order",
                        textAlign: TextAlign.start,
                        style: Theme.of(context)
                            .textTheme
                            .headlineLarge
                            ?.copyWith(
                                color: Colors.black,
                                fontSize: 26,
                                fontWeight: FontWeight.w600,
                                fontFamily: GoogleFonts.outfit().fontFamily),
                      ),
                      SizedBox(height: height * 0.03),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.search_sharp,
                              color: Color(0xff911FDA),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            hintText: "Find for food or restaurant...",
                            hintStyle: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  fontSize: 14,
                                  color: Color(0xff9796A1),
                                  fontWeight: FontWeight.w300,
                                  fontFamily: GoogleFonts.outfit().fontFamily,
                                ),
                            contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide:
                                    BorderSide(color: Color(0xffDCDCDC))),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide:
                                    BorderSide(color: Color(0xffDCDCDC))),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide:
                                    BorderSide(color: Color(0xffDCDCDC)))),
                      ),
                      SizedBox(height: height * 0.02),
                      CarouselSlider(
                        items: [
                          Container(
                            width: width,
                            height: 130,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: NetworkImage(home_controller
                                    .userList
                                    .value
                                    .bannerSection![0]
                                    .bannerBackgroundImage
                                    .toString()),
                                fit: BoxFit.contain,
                              ),
                            ),
                            child: Row(children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: width * 0.4,
                                    height: height * 0.2,
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Image.network(
                                          home_controller.userList.value
                                              .bannerSection![0].bannerImage
                                              .toString(),
                                          height: height * 0.5),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: height * 0.02,
                              ),
                              Container(
                                  padding: EdgeInsets.only(top: 20),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(height: height * 0.03),
                                      Text(
                                        home_controller.userList.value
                                            .bannerSection![0].bannerTitle
                                            .toString(),
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineSmall
                                            ?.copyWith(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.w700,
                                                fontFamily: GoogleFonts.outfit()
                                                    .fontFamily),
                                      ),
                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                      Text(
                                        home_controller.userList.value
                                            .bannerSection![0].bannerSubTitle
                                            .toString(),
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineSmall
                                            ?.copyWith(
                                                color: Colors.white,
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: GoogleFonts.outfit()
                                                    .fontFamily),
                                      ),
                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: MyButton(
                                              side: BorderSide(
                                                  color: Color(0xff911FDA)),
                                              title: home_controller
                                                  .userList
                                                  .value
                                                  .bannerSection![0]
                                                  .bannerButtonText
                                                  .toString(),
                                              onTap: () {},
                                              height: height * 0.05,
                                              width: width * 0.3,
                                              bgColor: Color(0xff911FDA),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  )),
                              SizedBox(
                                height: height * 0.1,
                              ),
                            ]),
                          ),
                        ],
                        options: CarouselOptions(
                          enlargeCenterPage: true,
                          autoPlay: true,
                          aspectRatio: 16 / 9,
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enableInfiniteScroll: true,
                          autoPlayAnimationDuration:
                              Duration(milliseconds: 800),
                          viewportFraction: 0.99,
                        ),
                      ),
                      SizedBox(height: height * 0.01),
                      Text(
                        "Restaurant Main Menu",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                fontFamily: GoogleFonts.outfit().fontFamily),
                      ),
                      SizedBox(height: height * 0.02),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Container(
                          child: Row(
                            children: [
                              for (int i = 0;
                                  i <
                                      home_controller.userList.value
                                          .restaurantMainMenu!.length;
                                  i++)
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 6.5, left: 6.5),
                                  child: Column(
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: Colors.white,
                                        radius: 33,
                                        child: CircleAvatar(
                                          backgroundImage: NetworkImage(
                                              home_controller
                                                  .userList
                                                  .value
                                                  .restaurantMainMenu![i]
                                                  .categoryImg
                                                  .toString()),
                                          radius: 33,
                                          // radius:
                                        ),
                                      ),
                                      SizedBox(height: height * 0.02),
                                      Text(
                                        home_controller.userList.value
                                            .restaurantMainMenu![i].categoryName
                                            .toString(),
                                        style:
                                            // Theme.of(context).textTheme.labelSmall?.copyWith(
                                            //   fontFamily: GoogleFonts.outfit().fontFamily,
                                            //   color: Color(0xff41004C),
                                            //   fontSize: 10,
                                            //   fontWeight: FontWeight.w400,
                                            // )

                                            TextStyle(
                                                color: Color(0xff41004C),
                                                fontSize: 10,
                                                fontWeight: FontWeight.w500,
                                                fontFamily: GoogleFonts.outfit()
                                                    .fontFamily),
                                      ),
                                    ],
                                  ),
                                ),
                              SizedBox(height: height * 0.03),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: height * 0.04),
                      Text(
                        "Food Menu",
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              fontFamily: GoogleFonts.outfit().fontFamily,
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                      SizedBox(height: height * 0.02),
                      GridView.builder(
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
                        itemCount: home_controller
                            .userList.value.categoryMainMenu!.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              Get.to(() => OnlineOrder2());
                            },
                            child: Container(
                              height: 100,
                              width: 235,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15)),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    //SizedBox(height: 5),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: Image.network(home_controller
                                              .userList
                                              .value
                                              .categoryMainMenu![index]
                                              .categoryImg
                                              .toString()
                                          //fit: BoxFit.fill,
                                          ),
                                    ),
                                    SizedBox(height: height * 0.01),
                                    Text(
                                      home_controller.userList.value
                                          .categoryMainMenu![index].categoryName
                                          .toString(),
                                      style:
                                          Theme.of(context).textTheme.bodyLarge,
                                    ),
                                    SizedBox(height: height * 0.01),
                                    Text(
                                      home_controller
                                          .userList
                                          .value
                                          .categoryMainMenu![index]
                                          .categoryDescription
                                          .toString(),
                                      // style: Theme.of(context).textTheme.
                                      // labelSmall?.copyWith(
                                      //   color: Color(0xff9796A1),
                                      //  // fontFamily: GoogleFonts.outfit().fontFamily,
                                      //   fontWeight: FontWeight.w300
                                      // ),
                                      style: TextStyle(
                                          color: Color(0xff9796A1),
                                          fontSize: 10,
                                          fontFamily:
                                              GoogleFonts.outfit().fontFamily,
                                          fontWeight: FontWeight.w300),
                                    ),
                                    SizedBox(height: height * 0.03),
                                    Text(
                                      "Go to Menu >",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall
                                          ?.copyWith(
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xff41004C),
                                              fontSize: 12,
                                              fontFamily: GoogleFonts.outfit()
                                                  .fontFamily),
                                    )
                                  ]),
                            ),
                          );
                        },
                      ),
                      SizedBox(height: height * 0.05)
                    ],
                  );
              }
            }))),
      ),
      drawer: Container(
        width: 240,
        height: 830,
        child: Drawer(
          backgroundColor: Colors.white,
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20, left: 20),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: InkWell(
                          onTap: () {
                            Get.back();
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image.asset('assets/drawericon/cross.png',
                                width: width * 0.04, height: height * 0.04),
                          ),
                        ),
                      ),
                    ),
                    CircleAvatar(
                      radius: 30,
                      backgroundImage:
                          AssetImage("assets/drawericon/image.png"),
                    ),
                    Text(
                      "Farion Wick",
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium
                          ?.copyWith(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              fontFamily: GoogleFonts.outfit().fontFamily),
                    ),
                    Text(
                      "userdemo@gmail.com",
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.w300,
                          fontSize: 14,
                          color: Color(0xff9EA1B1)),
                    )
                  ],
                ),
              ),
              SizedBox(height: height * 0.01),
              ListTile(
                visualDensity: VisualDensity.compact,
                dense: true,
                horizontalTitleGap: 0,
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.asset('assets/drawericon/aboutus.png',
                      width: width * 0.07, height: height * 0.07),
                ),
                title: Text("About Us",
                    style: Theme.of(context).textTheme.bodyLarge),
                onTap: () {
                  Get.to(() => AboutUS());
                },
              ),
              ListTile(
                visualDensity: VisualDensity.compact,
                dense: true,
                horizontalTitleGap: 0,
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.asset('assets/drawericon/photogallery.png',
                      width: width * 0.07, height: height * 0.07),
                ),
                title: Text("Photo Gallery",
                    style: Theme.of(context).textTheme.bodyLarge),
                onTap: () {
                  Get.to(() => PhotoGallery());
                },
              ),
              ListTile(
                visualDensity: VisualDensity.compact,
                dense: true,
                horizontalTitleGap: 0,
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.asset('assets/drawericon/followus.png',
                      width: width * 0.07, height: height * 0.07),
                ),
                title: Text("Follow Us",
                    style: Theme.of(context).textTheme.bodyLarge),
                onTap: () {
                  Get.to(() => FollowUS());
                },
              ),
              ListTile(
                visualDensity: VisualDensity.compact,
                dense: true,
                horizontalTitleGap: 0,
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.asset('assets/drawericon/clientsays.png',
                      width: width * 0.07, height: height * 0.07),
                ),
                title: Text("Client say's",
                    style: Theme.of(context).textTheme.bodyLarge),
                onTap: () {
                  Get.to(() => ClientSays());
                },
              ),
              ListTile(
                visualDensity: VisualDensity.compact,
                dense: true,
                horizontalTitleGap: 0,
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.asset('assets/drawericon/addreview.png',
                      width: width * 0.07, height: height * 0.07),
                ),
                title: Text("Add Review",
                    style: Theme.of(context).textTheme.bodyLarge),
                onTap: () {
                  Get.to(() => AddReview());
                },
              ),
              ListTile(
                visualDensity: VisualDensity.compact,
                dense: true,
                horizontalTitleGap: 0,
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.asset('assets/drawericon/contactus.png',
                      width: width * 0.07, height: height * 0.07),
                ),
                title: Text("Contact Us",
                    style: Theme.of(context).textTheme.bodyLarge),
                onTap: () {
                  Get.to(() => contactus());
                },
              ),
              ListTile(
                visualDensity: VisualDensity.compact,
                dense: true,
                horizontalTitleGap: 0,
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.asset('assets/drawericon/loyalty.png',
                      width: width * 0.07, height: height * 0.07),
                ),
                title: Text("Loyalty",
                    style: Theme.of(context).textTheme.bodyLarge),
                onTap: () {
                  Get.to(() => Loyalty());
                },
              ),
              ListTile(
                visualDensity: VisualDensity.compact,
                dense: true,
                horizontalTitleGap: 0,
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.asset('assets/drawericon/fanwall.png',
                      width: width * 0.07, height: height * 0.07),
                ),
                title: Text("Fan Wall",
                    style: Theme.of(context).textTheme.bodyLarge),
                onTap: () {
                  Get.to(() => FanWall());
                },
              ),
              ListTile(
                visualDensity: VisualDensity.compact,
                dense: true,
                horizontalTitleGap: 0,
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.asset('assets/drawericon/location.png',
                      width: width * 0.07, height: height * 0.07),
                ),
                title: Text("Location",
                    style: Theme.of(context).textTheme.bodyLarge),
                onTap: () {
                  Get.to(() => Location());
                },
              ),
              ListTile(
                visualDensity: VisualDensity.compact,
                dense: true,
                horizontalTitleGap: 0,
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.asset('assets/drawericon/gps.png',
                      width: width * 0.07, height: height * 0.07),
                ),
                title: Text("GPS Coupon",
                    style: Theme.of(context).textTheme.bodyLarge),
                onTap: () {
                  Get.to(() => GPS());
                },
              ),
              SizedBox(height: height * 0.1),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(() => LoginPage());
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff41004C),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      fixedSize: Size(120, 43),
                    ),
                    child: Wrap(
                      children: [
                        CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 10,
                            child: Image.asset("assets/drawericon/logout.png")),
                        Text(
                          " Log Out",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                  fontFamily: GoogleFonts.outfit().fontFamily),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: height * 0.01)
            ],
          ),
        ),
      ),
    );
  }
}
