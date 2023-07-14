import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the29029restaurant/view/bottombarscreen/menu/onlineorder2.dart';
import 'package:the29029restaurant/view/bottombarscreen/menu/restaurantmenu/takeawaymenu2.dart';
import 'package:the29029restaurant/view/bottombarscreen/onlineorder/onlineorder.dart';

class MenuUi extends StatefulWidget {
  const MenuUi({super.key});

  @override
  State<MenuUi> createState() => _MenuUiState();
}

class _MenuUiState extends State<MenuUi> {
  bool _hasBeenPressed = false;
  bool c2 = false;
  var choice = 1;
  var size, height, width;
  List<String> Names = [
    "Starter",
    "Main Course",
    "Variety food",
    "Side",
  ];

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffFFFFFF),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(width / 7),
          child: AppBar(
            automaticallyImplyLeading: false,

            // primary: false,
            //   title
            backgroundColor: Colors.transparent,
            elevation: 0,
            centerTitle: true,
            title: Padding(
              padding: EdgeInsets.symmetric(
                vertical: width / 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => OnlineOrder2(),
                            ));
                      },
                      child: Image.asset("assets/drawericon/Group 17955.png")),
                  Center(
                    child: Container(
                        // color: Colors.red,
                        child: Center(
                            child: Text(
                      "Take Away Menu",
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          color: Color(0xff32324D),
                          fontWeight: FontWeight.w600),
                    ))),
                  ),
                  Icon(
                    Icons.search,
                    size: width / 12,
                    color: Color(0XFF911fda),
                  )
                ],
              ),
            ),
          ),
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
                                  width: 1, color: Color(0xff9796A1)),
                            ),
                            child: Center(
                                child: Text("Starters",
                                    style: TextStyle(
                                      color: choice == 1
                                          ? Color(0xffffffff)
                                          : Color(0xff9796A1),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      fontFamily:
                                          GoogleFonts.outfit().fontFamily,
                                    ))),
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
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CourseUi()));
                            setState(() {});
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: choice == 2
                                  ? Color(0xff911FDA)
                                  : Color(0xffffff),
                              border: Border.all(
                                  width: 1, color: Color(0xff9796A1)),
                            ),
                            child: Center(
                                child: Text("Main Course",
                                    style: TextStyle(
                                        color: choice == 2
                                            ? Color(0xffffffff)
                                            : Color(0xff9796A1),
                                        fontFamily:
                                            GoogleFonts.outfit().fontFamily,
                                        fontWeight: FontWeight.w400,
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
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => BotUi()));
                            choice = 3;
                            setState(() {});
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: choice == 3
                                  ? Color(0xff911FDA)
                                  : Color(0xffffff),
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                  width: 1, color: Color(0xff9796A1)),
                            ),
                            child: Center(
                                child: Text(
                              "Variety Foods",
                              style: TextStyle(
                                color: choice == 3
                                    ? Color(0xffffffff)
                                    : Color(0xff9796A1),
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                fontFamily: GoogleFonts.outfit().fontFamily,
                              ),
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
                                  width: 1, color: Color(0xff9796A1)),
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
                SizedBox(
                  height: height / 25,
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width / 30),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Starters",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          fontFamily: GoogleFonts.outfit().fontFamily,
                        ),
                      )),
                ),
                SizedBox(
                  height: height / 40,
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width / 30),
                  child: Row(
                    children: [
                      Container(
                        height: height / 3,
                        width: width / 2.2,
                        decoration: BoxDecoration(
                            color: Color(0xffF5F5F5),
                            borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              height: height / 140,
                            ),
                            Center(
                                child: Image.asset(
                                    'assets/drawericon/avocado sandwich.png')),
                            SizedBox(
                              height: height / 80,
                            ),
                            Column(
                              children: [
                                Text(
                                  "Mixed Platter:(ideal",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall
                                      ?.copyWith(
                                          color: Color(0xff32324D),
                                          fontWeight: FontWeight.w500),
                                ),
                                // SizedBox(
                                //   height: height / 100,
                                // ),
                                Center(
                                  child: Text(
                                    "For Two People",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall
                                        ?.copyWith(
                                            color: Color(0xff32324D),
                                            fontWeight: FontWeight.w500),
                                    // style: TextStyle(
                                    //     fontSize: 12,
                                    //     fontWeight: FontWeight.w700,
                                    //   fontFamily:GoogleFonts.outfit().fontFamily,
                                    // ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: height / 100,
                            ),
                            Text(
                              "Garlic chicken Tikka...",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                      color: Color(0xff9796A1),
                                      fontWeight: FontWeight.w300),
                            ),
                            SizedBox(
                              height: height / 100,
                            ),
                            Center(
                              child: Text(
                                "£12.95",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(
                                        color: Color(0xff911FDA),
                                        fontWeight: FontWeight.w700),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: width / 35,
                      ),
                      Container(
                        height: height / 3,
                        width: width / 2.2,
                        decoration: BoxDecoration(
                            color: Color(0xffF5F5F5),
                            borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              height: height / 140,
                            ),
                            Center(
                                child: Image.asset(
                                    'assets/drawericon/avocado sandwich.png')),
                            SizedBox(
                              height: height / 80,
                            ),
                            Column(
                              children: [
                                Text(
                                  "Mixed Platter:(ideal",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall
                                      ?.copyWith(
                                          color: Color(0xff32324D),
                                          fontWeight: FontWeight.w500),
                                ),
                                // SizedBox(
                                //   height: height / 100,
                                // ),
                                Center(
                                  child: Text(
                                    "For Two People",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall
                                        ?.copyWith(
                                            color: Color(0xff32324D),
                                            fontWeight: FontWeight.w500),
                                    // style: TextStyle(
                                    //     fontSize: 12,
                                    //     fontWeight: FontWeight.w700,
                                    //   fontFamily:GoogleFonts.outfit().fontFamily,
                                    // ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: height / 100,
                            ),
                            Text(
                              "Garlic chicken Tikka...",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                      color: Color(0xff9796A1),
                                      fontWeight: FontWeight.w300),
                            ),
                            SizedBox(
                              height: height / 100,
                            ),
                            Center(
                              child: Text(
                                "£12.95",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(
                                        color: Color(0xff911FDA),
                                        fontWeight: FontWeight.w700),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height / 40,
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width / 30),
                  child: Row(
                    children: [
                      Container(
                        height: height / 3,
                        width: width / 2.2,
                        decoration: BoxDecoration(
                            color: Color(0xffF5F5F5),
                            borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              height: height / 140,
                            ),
                            Center(
                                child: Image.asset(
                                    'assets/drawericon/avocado sandwich.png')),
                            SizedBox(
                              height: height / 80,
                            ),
                            Column(
                              children: [
                                Text(
                                  "Mixed Platter:(ideal",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall
                                      ?.copyWith(
                                          color: Color(0xff32324D),
                                          fontWeight: FontWeight.w500),
                                ),
                                // SizedBox(
                                //   height: height / 100,
                                // ),
                                Center(
                                  child: Text(
                                    "For Two People",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall
                                        ?.copyWith(
                                            color: Color(0xff32324D),
                                            fontWeight: FontWeight.w500),
                                    // style: TextStyle(
                                    //     fontSize: 12,
                                    //     fontWeight: FontWeight.w700,
                                    //   fontFamily:GoogleFonts.outfit().fontFamily,
                                    // ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: height / 100,
                            ),
                            Text(
                              "Garlic chicken Tikka...",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                      color: Color(0xff9796A1),
                                      fontWeight: FontWeight.w300),
                            ),
                            SizedBox(
                              height: height / 100,
                            ),
                            Center(
                              child: Text(
                                "£12.95",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(
                                        color: Color(0xff911FDA),
                                        fontWeight: FontWeight.w700),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: width / 35,
                      ),
                      Container(
                        height: height / 3,
                        width: width / 2.2,
                        decoration: BoxDecoration(
                            color: Color(0xffF5F5F5),
                            borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              height: height / 140,
                            ),
                            Center(
                                child: Image.asset(
                                    'assets/drawericon/avocado sandwich.png')),
                            SizedBox(
                              height: height / 80,
                            ),
                            Column(
                              children: [
                                Text(
                                  "Mixed Platter:(ideal",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall
                                      ?.copyWith(
                                          color: Color(0xff32324D),
                                          fontWeight: FontWeight.w500),
                                ),
                                // SizedBox(
                                //   height: height / 100,
                                // ),
                                Center(
                                  child: Text(
                                    "For Two People",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall
                                        ?.copyWith(
                                            color: Color(0xff32324D),
                                            fontWeight: FontWeight.w500),
                                    // style: TextStyle(
                                    //     fontSize: 12,
                                    //     fontWeight: FontWeight.w700,
                                    //   fontFamily:GoogleFonts.outfit().fontFamily,
                                    // ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: height / 100,
                            ),
                            Text(
                              "Garlic chicken Tikka...",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                      color: Color(0xff9796A1),
                                      fontWeight: FontWeight.w300),
                            ),
                            SizedBox(
                              height: height / 100,
                            ),
                            Center(
                              child: Text(
                                "£12.95",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(
                                        color: Color(0xff911FDA),
                                        fontWeight: FontWeight.w700),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height / 40,
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width / 30),
                  child: Row(
                    children: [
                      Container(
                        height: height / 3,
                        width: width / 2.2,
                        decoration: BoxDecoration(
                            color: Color(0xffF5F5F5),
                            borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              height: height / 140,
                            ),
                            Center(
                                child: Image.asset(
                                    'assets/drawericon/avocado sandwich.png')),
                            SizedBox(
                              height: height / 80,
                            ),
                            Column(
                              children: [
                                Text(
                                  "Mixed Platter:(ideal",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall
                                      ?.copyWith(
                                          color: Color(0xff32324D),
                                          fontWeight: FontWeight.w500),
                                ),
                                // SizedBox(
                                //   height: height / 100,
                                // ),
                                Center(
                                  child: Text(
                                    "For Two People",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall
                                        ?.copyWith(
                                            color: Color(0xff32324D),
                                            fontWeight: FontWeight.w500),
                                    // style: TextStyle(
                                    //     fontSize: 12,
                                    //     fontWeight: FontWeight.w700,
                                    //   fontFamily:GoogleFonts.outfit().fontFamily,
                                    // ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: height / 100,
                            ),
                            Text(
                              "Garlic chicken Tikka...",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                      color: Color(0xff9796A1),
                                      fontWeight: FontWeight.w300),
                            ),
                            SizedBox(
                              height: height / 100,
                            ),
                            Center(
                              child: Text(
                                "£12.95",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(
                                        color: Color(0xff911FDA),
                                        fontWeight: FontWeight.w700),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: width / 35,
                      ),
                      Container(
                        height: height / 3,
                        width: width / 2.2,
                        decoration: BoxDecoration(
                            color: Color(0xffF5F5F5),
                            borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              height: height / 140,
                            ),
                            Center(
                                child: Image.asset(
                                    'assets/drawericon/avocado sandwich.png')),
                            SizedBox(
                              height: height / 80,
                            ),
                            Column(
                              children: [
                                Text(
                                  "Mixed Platter:(ideal",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall
                                      ?.copyWith(
                                          color: Color(0xff32324D),
                                          fontWeight: FontWeight.w500),
                                ),
                                // SizedBox(
                                //   height: height / 100,
                                // ),
                                Center(
                                  child: Text(
                                    "For Two People",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall
                                        ?.copyWith(
                                            color: Color(0xff32324D),
                                            fontWeight: FontWeight.w500),
                                    // style: TextStyle(
                                    //     fontSize: 12,
                                    //     fontWeight: FontWeight.w700,
                                    //   fontFamily:GoogleFonts.outfit().fontFamily,
                                    // ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: height / 100,
                            ),
                            Text(
                              "Garlic chicken Tikka...",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                      color: Color(0xff9796A1),
                                      fontWeight: FontWeight.w300),
                            ),
                            SizedBox(
                              height: height / 100,
                            ),
                            Center(
                              child: Text(
                                "£12.95",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(
                                        color: Color(0xff911FDA),
                                        fontWeight: FontWeight.w700),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height / 40,
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width / 30),
                  child: Row(
                    children: [
                      Container(
                        height: height / 3,
                        width: width / 2.2,
                        decoration: BoxDecoration(
                            color: Color(0xffF5F5F5),
                            borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              height: height / 140,
                            ),
                            Center(
                                child: Image.asset(
                                    'assets/drawericon/avocado sandwich.png')),
                            SizedBox(
                              height: height / 80,
                            ),
                            Column(
                              children: [
                                Text(
                                  "Mixed Platter:(ideal",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall
                                      ?.copyWith(
                                          color: Color(0xff32324D),
                                          fontWeight: FontWeight.w500),
                                ),
                                // SizedBox(
                                //   height: height / 100,
                                // ),
                                Center(
                                  child: Text(
                                    "For Two People",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall
                                        ?.copyWith(
                                            color: Color(0xff32324D),
                                            fontWeight: FontWeight.w500),
                                    // style: TextStyle(
                                    //     fontSize: 12,
                                    //     fontWeight: FontWeight.w700,
                                    //   fontFamily:GoogleFonts.outfit().fontFamily,
                                    // ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: height / 100,
                            ),
                            Text(
                              "Garlic chicken Tikka...",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                      color: Color(0xff9796A1),
                                      fontWeight: FontWeight.w300),
                            ),
                            SizedBox(
                              height: height / 100,
                            ),
                            Center(
                              child: Text(
                                "£12.95",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(
                                        color: Color(0xff911FDA),
                                        fontWeight: FontWeight.w700),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: width / 35,
                      ),
                      Container(
                        height: height / 3,
                        width: width / 2.2,
                        decoration: BoxDecoration(
                            color: Color(0xffF5F5F5),
                            borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              height: height / 140,
                            ),
                            Center(
                                child: Image.asset(
                                    'assets/drawericon/avocado sandwich.png')),
                            SizedBox(
                              height: height / 80,
                            ),
                            Column(
                              children: [
                                Text(
                                  "Mixed Platter:(ideal",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall
                                      ?.copyWith(
                                          color: Color(0xff32324D),
                                          fontWeight: FontWeight.w500),
                                ),
                                // SizedBox(
                                //   height: height / 100,
                                // ),
                                Center(
                                  child: Text(
                                    "For Two People",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall
                                        ?.copyWith(
                                            color: Color(0xff32324D),
                                            fontWeight: FontWeight.w500),
                                    // style: TextStyle(
                                    //     fontSize: 12,
                                    //     fontWeight: FontWeight.w700,
                                    //   fontFamily:GoogleFonts.outfit().fontFamily,
                                    // ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: height / 100,
                            ),
                            Text(
                              "Garlic chicken Tikka...",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                      color: Color(0xff9796A1),
                                      fontWeight: FontWeight.w300),
                            ),
                            SizedBox(
                              height: height / 100,
                            ),
                            Center(
                              child: Text(
                                "£12.95",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(
                                        color: Color(0xff911FDA),
                                        fontWeight: FontWeight.w700),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height / 40,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
