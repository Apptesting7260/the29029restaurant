import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the29029restaurant/view/bottombarscreen/onlineorder/card.dart';
import 'package:the29029restaurant/view/bottombarscreen/onlineorder/categories2.dart';
import 'package:the29029restaurant/view/bottombarscreen/onlineorder/locationcollection.dart';

class CatUi extends StatefulWidget {
  const CatUi({super.key});

  @override
  State<CatUi> createState() => _CatUiState();
}

class _CatUiState extends State<CatUi> {
  var choice = 0;
  var size, height, width;
  var c = 0;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
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
                InkWell( onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>LoteUi()));
                },
                    child: Image.asset("assets/drawericon/Group 17955.png")),
                Center(
                  child: Container(
                    // color: Colors.red,
                      child: Center(
                          child: Text(
                            "Categories",
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
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: height / 30,
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal:
                      MediaQuery.of(context).size.width / 35), // error
                  child: TextField(
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
              ),
              SizedBox(height: height / 40),
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width / 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => CaUi()));
                      },
                      child: Container(
                        // height: height / 3.4,
                        width: width / 2.2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child:
                                Image.asset("assets/drawericon/image 14.png")),
                            SizedBox(
                              height: height / 80,
                            ),
                            RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                    text: "Starters",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontFamily: GoogleFonts.outfit().fontFamily,
                                    ),
                                  ),
                                  TextSpan(
                                      text: "(23)",
                                      style: TextStyle(
                                          fontFamily:
                                          GoogleFonts.outfit().fontFamily,
                                          color: Color(0xff911FDA),
                                          fontSize: 16))
                                ])),
                            SizedBox(
                              height: height / 50,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Go to Menu",
                                  style: TextStyle(
                                      fontFamily:
                                      GoogleFonts.outfit().fontFamily,
                                      fontSize: 12,
                                      color: Color(0xff41004C)),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 12,
                                  color: Color(0xff41004C),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width / 35,
                    ),
                    Container(
                      // color: Colors.red,
                      // height: height / 3.4,
                      width: width / 2.2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset("assets/drawericon/image 14.png")),
                          SizedBox(
                            height: height / 80,
                          ),
                          RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                  text: "Main Course",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontFamily: GoogleFonts.outfit().fontFamily,
                                  ),
                                ),
                                TextSpan(
                                    text: "(18)",
                                    style: TextStyle(
                                        fontFamily: GoogleFonts.outfit().fontFamily,
                                        color: Color(0xff911FDA),
                                        fontSize: 16))
                              ])),
                          SizedBox(
                            height: height / 50,
                          ),
                          Row(
                            children: [
                              Text(
                                "Go to Menu",
                                style: TextStyle(
                                    fontFamily: GoogleFonts.outfit().fontFamily,
                                    fontSize: 12,
                                    color: Color(0xff41004C)),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 12,
                                color: Color(0xff41004C),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: height / 40),

              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width / 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      // height: height / 3.2,
                      width: width / 2.23,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset("assets/drawericon/image 14.png")),
                          SizedBox(
                            height: height / 80,
                          ),
                          RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                  text: "Vegetarian Dishes",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontFamily: GoogleFonts.outfit().fontFamily,
                                  ),
                                ),
                                TextSpan(
                                    text: "(7)",
                                    style: TextStyle(
                                        color: Color(0xff911FDA), fontSize: 16))
                              ])),
                          SizedBox(
                            height: height / 50,
                          ),
                          Row(
                            children: [
                              Text(
                                "Go to Menu",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xff41004C),
                                  fontFamily: GoogleFonts.outfit().fontFamily,
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 12,
                                color: Color(0xff41004C),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: width / 80,
                    ),
                    InkWell(
                      onTap: () {
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (context) => CaUi()));
                      },
                      child: Container(
                        // height: height / 3.2,
                        width: width / 2.23,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child:
                                Image.asset("assets/drawericon/image 14.png")),
                            SizedBox(
                              height: height / 80,
                            ),
                            RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                    text: "Fresh Sea Food\nDishes",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontFamily: GoogleFonts.outfit().fontFamily,
                                    ),
                                  ),
                                  TextSpan(
                                      text: "(4)",
                                      style: TextStyle(
                                        color: Color(0xff911FDA),
                                        fontSize: 16,
                                        fontFamily: GoogleFonts.outfit().fontFamily,
                                      ))
                                ])),
                            SizedBox(
                              height: height / 50,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Go to Menu",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xff41004C),
                                    fontFamily: GoogleFonts.outfit().fontFamily,
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 12,
                                  color: Color(0xff41004C),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: height / 40),

              // SizedBox(height: height / 40),
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width / 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      // height: height / 3.4,
                      width: width / 2.2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset("assets/drawericon/image 14.png")),
                          SizedBox(
                            height: height / 80,
                          ),
                          RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                  text: "Fresh Sea Food ",
                                  style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                                ),
                                TextSpan(
                                    text: "(23)",
                                    style: TextStyle(
                                        color: Color(0xff911FDA), fontSize: 16))
                              ])),
                          SizedBox(
                            height: height / 50,
                          ),
                          Row(
                            children: [
                              Text(
                                "Go to Menu",
                                style: TextStyle(
                                    fontSize: 12, color: Color(0xff41004C)),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 12,
                                color: Color(0xff41004C),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: width / 35,
                    ),
                    Container(
                      // height: height / 3.4,
                      width: width / 2.2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset("assets/drawericon/image 14.png")),
                          SizedBox(
                            height: height / 80,
                          ),
                          RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                  text: "Starters",
                                  style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                                ),
                                TextSpan(
                                    text: "(23)",
                                    style: TextStyle(
                                        color: Color(0xff911FDA), fontSize: 16))
                              ])),
                          SizedBox(
                            height: height / 50,
                          ),
                          Row(
                            children: [
                              Text(
                                "Go to Menu",
                                style: TextStyle(
                                    fontSize: 12, color: Color(0xff41004C)),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 12,
                                color: Color(0xff41004C),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: height / 40),

              // SizedBox(height: height / 40),
              Padding(
                padding: EdgeInsets. only(
                    left: MediaQuery.of(context).size.width / 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      // height: height / 3.4,
                      width: width / 2.2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset("assets/drawericon/image 14.png")),
                          SizedBox(
                            height: height / 80,
                          ),
                          RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                  text: "Starters",
                                  style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                                ),
                                TextSpan(
                                    text: "(23)",
                                    style: TextStyle(
                                        color: Color(0xff911FDA), fontSize: 16))
                              ])),
                          SizedBox(
                            height: height / 50,
                          ),
                          Row(
                            children: [
                              Text(
                                "Go to Menu",
                                style: TextStyle(
                                    fontSize: 12, color: Color(0xff41004C)),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 12,
                                color: Color(0xff41004C),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    // SizedBox(
                    //   width: width / 35,
                    // ),
                    Container(
                      // height: height / 3.4,
                      width: width / 2.2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset("assets/drawericon/image 14.png")),
                          SizedBox(
                            height: height / 80,
                          ),
                          RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                  text: "Starters",
                                  style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                                ),
                                TextSpan(
                                    text: "(23)",
                                    style: TextStyle(
                                        color: Color(0xff911FDA), fontSize: 16))
                              ])),
                          SizedBox(
                            height: height / 50,
                          ),
                          Row(
                            children: [
                              Text(
                                "Go to Menu",
                                style: TextStyle(
                                    fontSize: 12, color: Color(0xff41004C)),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 12,
                                color: Color(0xff41004C),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: height / 40),

              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width / 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      // height: height / 3.4,
                      width: width / 2.2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset("assets/drawericon/image 14.png")),
                          SizedBox(
                            height: height / 80,
                          ),
                          RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                  text: "Starters",
                                  style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                                ),
                                TextSpan(
                                    text: "(23)",
                                    style: TextStyle(
                                        color: Color(0xff911FDA), fontSize: 16))
                              ])),
                          SizedBox(
                            height: height / 50,
                          ),
                          Row(
                            children: [
                              Text(
                                "Go to Menu",
                                style: TextStyle(
                                    fontSize: 12, color: Color(0xff41004C)),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 12,
                                color: Color(0xff41004C),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    // SizedBox(
                    //   width: width / 35,
                    // ),
                    Container(
                      // height: height / 3.4,
                      width: width / 2.2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset("assets/drawericon/image 14.png")),
                          SizedBox(
                            height: height / 80,
                          ),
                          RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                  text: "Starters",
                                  style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                                ),
                                TextSpan(
                                    text: "(23)",
                                    style: TextStyle(
                                        color: Color(0xff911FDA), fontSize: 16))
                              ])),
                          SizedBox(
                            height: height / 50,
                          ),
                          Row(
                            children: [
                              Text(
                                "Go to Menu",
                                style: TextStyle(
                                    fontSize: 12, color: Color(0xff41004C)),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 12,
                                color: Color(0xff41004C),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: height / 40),

              // SizedBox(height: height / 40),
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width / 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      // height: height / 3.4,
                      width: width / 2.2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset("assets/drawericon/image 14.png")),
                          SizedBox(
                            height: height / 80,
                          ),
                          RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                  text: "Starters",
                                  style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                                ),
                                TextSpan(
                                    text: "(23)",
                                    style: TextStyle(
                                        color: Color(0xff911FDA), fontSize: 16))
                              ])),
                          SizedBox(
                            height: height / 50,
                          ),
                          Row(
                            children: [
                              Text(
                                "Go to Menu",
                                style: TextStyle(
                                    fontSize: 12, color: Color(0xff41004C)),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 12,
                                color: Colors.purple,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: width / 35,
                    ),
                    Container(
                      // height: height / 3.4,
                      width: width / 2.2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset("assets/drawericon/image 14.png")),
                          SizedBox(
                            height: height / 80,
                          ),
                          RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                  text: "Starters",
                                  style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                                ),
                                TextSpan(
                                    text: "(23)",
                                    style: TextStyle(
                                        color: Color(0xff911FDA), fontSize: 16))
                              ])),
                          SizedBox(
                            height: height / 50,
                          ),
                          Row(
                            children: [
                              Text(
                                "Go to Menu",
                                style: TextStyle(
                                    fontSize: 12, color: Color(0xff41004C)),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 12,
                                color: Colors.purple,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: height / 40),
            ],
          ),
        ),
      ),
    );
  }
}
