import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the29029restaurant/view/bottombarscreen/menu/onlineorder2.dart';
import 'package:the29029restaurant/view/bottombarscreen/menu/restaurantmenu/takeamenu3.dart';
import 'package:the29029restaurant/view/bottombarscreen/menu/restaurantmenu/takeawaymenu.dart';

class CourseUi extends StatefulWidget {
  const CourseUi({super.key});

  @override
  State<CourseUi> createState() => _CourseUiState();
}

class _CourseUiState extends State<CourseUi> {
  bool _hasBeenPressed = false;
  bool c2 = false;
  var choice = 2;

  var size, height, width;
  List<String> Names = [
    "Starter",
    "Main Course",
    "Variety food",
    "Side",
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffFFFFFF),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: GestureDetector(
            onTap: () {
              Get.to(
                () => MenuUi(),
              );
            },
            child: Image.asset("assets/images/backbutton.png"),
          ),
          title: Text("Take Away Menu",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(fontSize: 18, fontWeight: FontWeight.w600)),
          centerTitle: true,
          actions: [
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Icon(
                  Icons.search,
                  size: height * 0.04,
                  weight: width,
                  color: Color(0XFF911fda),
                ))
          ],
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: height / 25,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width / 38),
                        child: InkWell(
                          onTap: () {
                            choice = 1;
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MenuUi()));
                            setState(() {});
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: choice == 1
                                  ? Color(0xff911FDA)
                                  : Color(0xffffff),
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                  width: 1,
                                  color: choice == 1
                                      ? Color(0xff911FDA)
                                      : Color(0xff9796A1)),
                            ),
                            child: Center(
                                child: Text("Starters",
                                    style: TextStyle(
                                        color: choice == 1
                                            ? Color(0xffffffff)
                                            : Color(0xff9796A1),
                                        fontWeight: FontWeight.w400,
                                        fontFamily:
                                            GoogleFonts.outfit().fontFamily,
                                        fontSize: 14))),
                            height: height / 20,
                            width: width / 3.5,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width / 45),
                        child: InkWell(
                          onTap: () {
                            choice = 2;
                            setState(() {});
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: choice == 2
                                  ? Color(0xff911FDA)
                                  : Color(0xffffff),
                              border: Border.all(
                                  width: 1,
                                  color: choice == 2
                                      ? Color(0xff911FDA)
                                      : Color(0xff9796A1)),
                            ),
                            child: Center(
                                child: Text("Main Course",
                                    style: TextStyle(
                                        color: choice == 2
                                            ? Color(0xffffffff)
                                            : Color(0xff9796A1),
                                        fontWeight: FontWeight.w400,
                                        fontFamily:
                                            GoogleFonts.outfit().fontFamily,
                                        fontSize: 14))),
                            height: height / 20,
                            width: width / 3.5,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width / 45),
                        child: InkWell(
                          onTap: () {
                            choice = 3;
                            //  Navigator.push(context, MaterialPageRoute(builder: (context)=>BotUi()));
                            setState(() {});
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: choice == 3
                                  ? Color(0xff911FDA)
                                  : Color(0xffffff),
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                  width: 1,
                                  color: choice == 3
                                      ? Color(0xff911FDA)
                                      : Color(0xff9796A1)),
                            ),
                            child: Center(
                                child: Text(
                              "Variety Foods",
                              style: TextStyle(
                                  color: choice == 3
                                      ? Color(0xffffffff)
                                      : Color(0xff9796A1),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: GoogleFonts.outfit().fontFamily,
                                  fontSize: 14),
                            )),
                            height: height / 20,
                            width: width / 3.5,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width / 45),
                        child: InkWell(
                          onTap: () {
                            choice = 4;
                            setState(() {});
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: choice == 4
                                  ? Color(0xff911FDA)
                                  : Color(0xffffff),
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                  width: 1,
                                  color: choice == 4
                                      ? Color(0xff911FDA)
                                      : Color(0xff9796A1)),
                            ),
                            child: Center(
                                child: Text("Side",
                                    style: TextStyle(
                                        color: choice == 4
                                            ? Color(0xffffffff)
                                            : Color(0xff9796A1),
                                        fontWeight: FontWeight.w400,
                                        fontFamily:
                                            GoogleFonts.outfit().fontFamily,
                                        fontSize: 14))),
                            height: height / 20,
                            width: width / 3.5,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height * 0.03),
                Padding(
                  padding: EdgeInsets.only(right: 20, left: 20),
                  //  left: MediaQuery.of(context).size.width / 30),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Main Course",
                        style: TextStyle(
                            fontFamily: GoogleFonts.outfit().fontFamily,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      )),
                ),
                SizedBox(height: height * 0.02),
                Padding(
                    padding: EdgeInsets.only(right: 20, left: 20),
                    child: GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: .6,
                          crossAxisSpacing: 11,
                          mainAxisSpacing: 11,
                          mainAxisExtent: 270,
                        ),
                        itemCount: 6,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              Get.to(() => Takeawaymenu3());
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
                                      child: Image.asset(
                                          'assets/drawericon/avocado sandwich (1).png')),
                                  Text(
                                    "Piyaza Chicken ",
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
                                    "Strips of Corn Fed Chic...",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall
                                        ?.copyWith(
                                            color: Color(0xff9796A1),
                                            fontWeight: FontWeight.w300),
                                  ),
                                  SizedBox(height: height * 0.01),
                                  Text(
                                    "£11.55",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall
                                        ?.copyWith(
                                            color: Color(0xff911FDA),
                                            fontWeight: FontWeight.w700),
                                  ),
                                ],
                              ),
                            ),
                          );
                        })),
                SizedBox(height: height * 0.01),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
