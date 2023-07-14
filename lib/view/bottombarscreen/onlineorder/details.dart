import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the29029restaurant/view/bottombarscreen/onlineorder/categoriesitems.dart';
import 'package:the29029restaurant/view/bottombarscreen/onlineorder/card.dart';
import 'package:the29029restaurant/widgets/my_button.dart';

class DetUi extends StatefulWidget {
  const DetUi({super.key});

  @override
  State<DetUi> createState() => _DetUiState();
}

class _DetUiState extends State<DetUi> {
  var size, height, width;

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
                InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => StUi()));
                    },
                    child: Container(
                        child:
                            Image.asset("assets/drawericon/Group 17955.png"))),
                Center(
                  child: Container(
                      // color: Colors.red,
                      child: Center(
                          child: Text(
                    "Details",
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
              height: height / 35,
            ),
            Center(
              child: InkWell(
                onTap: () {
                  //   Navigator.push(context, MaterialPageRoute(builder: (Context)=>DeeUi()));
                },
                child: Container(
                    height: height / 1.8,
                    width: width / 1.2,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0xffF5F5F5)),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          height: height / 40,
                        ),
                        Container(
                          height: height / 4.5,
                          width: width / 2.3,
                          // color: Colors.red,
                          child: Image.asset(
                            "assets/drawericon/iii.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(
                          height: height / 80,
                        ),
                        Center(
                          child: Center(
                              child: Text(
                            "Piyaza Chicken",
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall
                                ?.copyWith(
                                    color: Color(
                                      0xff32324D,
                                    ),
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500),
                          )),
                        ),
                        SizedBox(
                          height: height / 70,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: width / 20),
                          child: Center(
                              child: Text(
                            "Strips of Corn Fed Chicken breast cooked \nin a jalifrasiee style sauce with onion and \n    green chilies, accompanied with light\n         "
                            "                   herbed rice.",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(
                                    color: Color(0xff9796A1),
                                    fontWeight: FontWeight.w300),
                          )),
                        ),
                        SizedBox(
                          height: height / 35,
                        ),
                        Center(
                          child: Text(
                            "£11.55",
                            style: Theme.of(context)
                                .textTheme
                                .displayLarge
                                ?.copyWith(
                                    color: Color(0xff911FDA),
                                    fontSize: 22,
                                    fontWeight: FontWeight.w700),
                          ),
                        )
                      ],
                    )),
              ),
            ),
            SizedBox(height: height / 30),
            MyButton(bgColor: Color(0xff41004C),
                side: BorderSide(color:Color(0xff41004C) ),
                title: "Add to Card", onTap:(){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DeeUi()));
                  setState(() {});
                },
                height:50, width:200),
            // InkWell(
            //   onTap: (){
            //     Navigator.push(context,
            //         MaterialPageRoute(builder: (context) => DeeUi()));
            //     setState(() {});
            //   },
            //   child: Container(
            //     height: height / 12.8,
            //     width: width / 2,
            //     child: Center(
            //         child: Text(
            //       "Add To Cart",
            //       style: TextStyle(color: Colors.white),
            //     )),
            //     decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(100),
            //         color: Color(0xff41004C)),
            //   ),
            // ),
            SizedBox(height: height / 59),
            MyButton(bgColor: Color(0xff911FDA),
                side: BorderSide(color:Color(0xff911FDA) ),
                title: "Buy Now", onTap:(){
              Navigator.push(context,
                        MaterialPageRoute(builder: (context) => DeeUi()));
                    setState(() {}); 
            },
                height:50, width:200)
            // InkWell( onTap: (){
            //   Navigator.push(context,
            //       MaterialPageRoute(builder: (context) => DeeUi()));
            //   setState(() {});
            // },
            //   child: Container(
            //     height: height / 12.8,
            //     width: width / 2,
            //     child: Center(
            //         child: Text(
            //       "Buy Now",
            //       style: TextStyle(color: Colors.white),
            //     )),
            //     decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(100),
            //         color: Color(0xff911FDA)),
            //   ),
            // ),
          ],
        ),
      )),
    );
  }
}
