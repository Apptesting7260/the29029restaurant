import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the29029restaurant/view/bottombarscreen/onlineorder/card.dart';
import 'package:the29029restaurant/view/bottombarscreen/onlineorder/categories2.dart';
import 'package:the29029restaurant/view/bottombarscreen/onlineorder/details.dart';

class StUi extends StatefulWidget {
  const StUi({super.key});

  @override
  State<StUi> createState() => _StUiState();
}

class _StUiState extends State<StUi> {
  bool _hasBeenPressed = false;
  bool c2 = false;
  var choice = 2;
  final fieldText = TextEditingController();

  void clearText() {
    fieldText.clear();
  }

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
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: AppBar(
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CaUi()));
                    setState(() {});
                  },
                  child: Container(
                      child: Image.asset("assets/drawericon/Group 17955.png"))),
              Center(
                child: Container(
                  // color: Colors.red,
                    child: Center(
                        child: Text(
                          "Items for Starters",
                          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              color: Color(0xff323643), fontWeight: FontWeight.w600),
                        ))),
              ),
              Container(
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>DeeUi()));
                  },
                  child: Icon(
                    Icons.shopping_cart_outlined,
                    color: Color(0xff911FDA),
                    size: 28,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: height / 35,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal:
                    MediaQuery.of(context).size.width / 35), // error
                child: TextField(
                    controller: fieldText,
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          color: Color(0xff911FDA),
                          size: 28,
                        ),

                        filled: true,
                        fillColor: Color(0x88DCDCDC),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide(color: Color(0xffDCDCDC))),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide(color: Color(0xffDCDCDC)),
                        ))),
              ),
              SizedBox(
                height: height / 35,
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width / 30),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Starters",
                      style: TextStyle(
                          fontFamily: GoogleFonts.outfit().fontFamily,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
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
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>DetUi()));
                      },
                      child: Container(
                        height: height / 3.5,
                        width: width / 2.2,
                        decoration: BoxDecoration(
                            color: Color(0xffF5F5F5),
                            borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Center(
                                child: Image.asset(
                                    'assets/drawericon/avocado sandwich (1).png')),
                            Column(
                              children: [
                                Text(
                                  "Piyaza Chicken",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall
                                      ?.copyWith(
                                      color: Color(0xff32324D),
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            Text(
                              "Strips of Corn Fed Chic....",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                  color: Color(0xff9796A1),
                                  fontWeight: FontWeight.w300),
                            ),
                            Center(
                              child: Text(
                                "£11.55",
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
                    ),
                    SizedBox(
                      width: width / 35,
                    ),
                    Container(
                      height: height / 3.5,
                      width: width / 2.2,
                      // color: Colors.grey,
                      decoration: BoxDecoration(
                          color: Color(0xffF5F5F5),
                          borderRadius: BorderRadius.circular(30)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Center(
                              child: Image.asset(
                                  'assets/drawericon/avocado sandwich (1).png')),
                          Column(
                            children: [
                              Text(
                                "Piyaza Chicken",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(
                                    color: Color(0xff32324D),
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          Text(
                            "Strips of Corn Fed Chic....",
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(
                                color: Color(0xff9796A1),
                                fontWeight: FontWeight.w300),
                          ),
                          Center(
                            child: Text(
                              "£11.55",
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
                      height: height / 3.5,
                      width: width / 2.2,
                      decoration: BoxDecoration(
                          color: Color(0xffF5F5F5),
                          borderRadius: BorderRadius.circular(30)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Center(
                              child: Image.asset(
                                  'assets/drawericon/avocado sandwich (1).png')),
                          Column(
                            children: [
                              Text(
                                "Piyaza Chicken",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(
                                    color: Color(0xff32324D),
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          Text(
                            "Strips of Corn Fed Chic....",
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(
                                color: Color(0xff9796A1),
                                fontWeight: FontWeight.w300),
                          ),
                          Center(
                            child: Text(
                              "£11.55",
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
                      height: height / 3.5,
                      width: width / 2.2,
                      // color: Colors.grey,
                      decoration: BoxDecoration(
                          color: Color(0xffF5F5F5),
                          borderRadius: BorderRadius.circular(30)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Center(
                              child: Image.asset(
                                  'assets/drawericon/avocado sandwich (1).png')),
                          Column(
                            children: [
                              Text(
                                "Piyaza Chicken",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(
                                    color: Color(0xff32324D),
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          Text(
                            "Strips of Corn Fed Chic....",
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(
                                color: Color(0xff9796A1),
                                fontWeight: FontWeight.w300),
                          ),
                          Center(
                            child: Text(
                              "£11.55",
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
                      height: height / 3.5,
                      width: width / 2.2,
                      decoration: BoxDecoration(
                          color: Color(0xffF5F5F5),
                          borderRadius: BorderRadius.circular(30)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Center(
                              child: Image.asset(
                                  'assets/drawericon/avocado sandwich (1).png')),
                          Column(
                            children: [
                              Text(
                                "Piyaza Chicken",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(
                                    color: Color(0xff32324D),
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          Text(
                            "Strips of Corn Fed Chic....",
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(
                                color: Color(0xff9796A1),
                                fontWeight: FontWeight.w300),
                          ),
                          Center(
                            child: Text(
                              "£11.55",
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
                      height: height / 3.5,
                      width: width / 2.2,
                      // color: Colors.grey,
                      decoration: BoxDecoration(
                          color: Color(0xffF5F5F5),
                          borderRadius: BorderRadius.circular(30)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Center(
                              child: Image.asset(
                                  'assets/drawericon/avocado sandwich (1).png')),
                          Column(
                            children: [
                              Text(
                                "Piyaza Chicken",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(
                                    color: Color(0xff32324D),
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          Text(
                            "Strips of Corn Fed Chic....",
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(
                                color: Color(0xff9796A1),
                                fontWeight: FontWeight.w300),
                          ),
                          Center(
                            child: Text(
                              "£11.55",
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
                      height: height / 3.5,
                      width: width / 2.2,
                      decoration: BoxDecoration(
                          color: Color(0xffF5F5F5),
                          borderRadius: BorderRadius.circular(30)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Center(
                              child: Image.asset(
                                  'assets/drawericon/avocado sandwich (1).png')),
                          Column(
                            children: [
                              Text(
                                "Piyaza Chicken",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(
                                    color: Color(0xff32324D),
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          Text(
                            "Strips of Corn Fed Chic....",
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(
                                color: Color(0xff9796A1),
                                fontWeight: FontWeight.w300),
                          ),
                          Center(
                            child: Text(
                              "£11.55",
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
                      height: height / 3.5,
                      width: width / 2.2,
                      // color: Colors.grey,
                      decoration: BoxDecoration(
                          color: Color(0xffF5F5F5),
                          borderRadius: BorderRadius.circular(30)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Center(
                              child: Image.asset(
                                  'assets/drawericon/avocado sandwich (1).png')),
                          Column(
                            children: [
                              Text(
                                "Piyaza Chicken",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(
                                    color: Color(0xff32324D),
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          Text(
                            "Strips of Corn Fed Chic....",
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(
                                color: Color(0xff9796A1),
                                fontWeight: FontWeight.w300),
                          ),
                          Center(
                            child: Text(
                              "£11.55",
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
    );
  }
}
