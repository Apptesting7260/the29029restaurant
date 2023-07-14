import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the29029restaurant/view/bottombarscreen/menu/restaurantmenu/takeawaymenu2.dart';

class OpenUi extends StatefulWidget {
  const OpenUi({super.key});

  @override
  State<OpenUi> createState() => _OpenUiState();
}

class _OpenUiState extends State<OpenUi> {
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
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>CourseUi()));
                    },
                    child: Container(child: Image.asset("assets/drawericon/Group 17955.png"))),

                Center(
                  child: Container(
                    // color: Colors.red,
                      child: Center(
                          child: Text(
                            "Take Away Menu",
                            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                                color: Color(0xff323643), fontWeight: FontWeight.w600),
                          ))),
                ),
                Container()
              ],
            ),
          ),
        ),
      ),
      body: SafeArea(
          child: Column(
            children: [
              SizedBox(

                height: height/20,
              ),
              Center(
                child: InkWell(
                  onTap: (){
                   // Navigator.push(context, MaterialPageRoute(builder: (Context)=>LocationUi()));
                  },
                  child: Container(
                      height: height / 1.4,
                      width: width / 1.2,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color(0xffF5F5F5)),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(

                            height: height/30,
                          ),
                          Container(
                            height: height / 2.8,
                            width: width / 1.55,
                            // color: Colors.red,
                            child: Image.asset(
                              "assets/drawericon/iii.png",
                              fit: BoxFit.fill,
                            ),
                          ),
                          SizedBox(height: height/80,),
                          Center(
                            child: Center(
                                child: Text(
                                  "Piyaza Chicken",
                                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                                      color: Color(
                                        0xff32324D,
                                      ),
                                      fontSize: 22,
                                      fontWeight: FontWeight.w500),
                                )),
                          ),
                          SizedBox(height: height/80,),

                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: width / 20),
                            child: Center(
                                child: Text(
                                  "Strips of Corn Fed Chicken breast cooked \nin a jalifrasiee style sauce with onion and \n    green chilies, accompanied with light\n         "
                                      "                   herbed rice.",
                                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                      color: Color(0xff9796A1), fontWeight: FontWeight.w300),
                                )),
                          ),
                          SizedBox(

                            height: height/55,
                          ),
                          Center(
                            child: Text(
                              "£11.55",
                              style: Theme.of(context).textTheme.displayLarge?.copyWith(
                                  color: Color(0xff911FDA),
                                  fontSize: 22,
                                  fontWeight: FontWeight.w700),
                            ),
                          )
                        ],
                      )),
                ),
              ),
            ],
          )),

    );
  }
}