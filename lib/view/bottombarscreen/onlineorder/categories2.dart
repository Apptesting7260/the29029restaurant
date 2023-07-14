import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the29029restaurant/view/bottombarscreen/onlineorder/card.dart';
import 'package:the29029restaurant/view/bottombarscreen/onlineorder/categories.dart';
import 'package:the29029restaurant/view/bottombarscreen/onlineorder/categoriesitems.dart';

class CaUi extends StatefulWidget {
  const CaUi({super.key});

  @override
  State<CaUi> createState() => _CaUiState();
}

class _CaUiState extends State<CaUi> {
  var size, height, width;
  final fieldText = TextEditingController();

  void clearText() {
    fieldText.clear();
  }

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
                InkWell(onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>CatUi()));
                },
                    child: Container(child: Image.asset("assets/drawericon/Group 17955.png"))),
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: height / 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width / 35), // error
              child: TextField(
                  controller: fieldText,
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        color: Color(0xff911FDA),
                        size: 28,
                      ),
                      suffixIcon: IconButton(
                        // Icon to
                        icon: Icon(Icons.clear,color: Color(0xff41004C),), // clear text
                        onPressed: clearText,
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
              height: height / 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width / 20), // error

              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) =>StUi()));
                },
                child: Container(
                  height: height / 2.8,
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
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontFamily: GoogleFonts.outfit().fontFamily,
                              ),
                            ),
                            TextSpan(
                                text: "(23)",
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
                            color: Color(0xff41004c),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
