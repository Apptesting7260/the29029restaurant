import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:the29029restaurant/view/bottombarscreen/menu/restaurantmenu/takeawaymenu2.dart';

class Takeawaymenu3 extends StatefulWidget {
  const Takeawaymenu3({super.key});

  @override
  State<Takeawaymenu3> createState() => _Takeawaymenu3State();
}

class _Takeawaymenu3State extends State<Takeawaymenu3> {
  var size, height, width;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Get.to(() => CourseUi(),);
          },
          child: Image.asset("assets/images/backbutton.png"),
        ),
        title: Text("Take Away Menu",
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(fontSize: 18, fontWeight: FontWeight.w600)),
        centerTitle: true,
      ),
      body: SafeArea(

          child:
          Center(
            child:
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: height*0.05),
                Padding(padding: EdgeInsets.only(
                    right: 20,left: 20
                ),
                  child:
                  InkWell(
                    onTap: (){
                      // Navigator.push(context, MaterialPageRoute(builder: (Context)=>LocationUi()));
                    },
                    child:
                    Container(
                        height: height*0.6,
                        width: width*0.8,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Color(0xffF5F5F5)),
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(

                              height: height/30,
                            ),
                            Container(
                              height: height*0.3,
                              width: width*0.6,
                              child: Image.asset(
                                "assets/drawericon/iii.png",
                                fit: BoxFit.fill,
                              ),
                            ),
                            SizedBox(height:height*0.03),
                            Text("Piyaza Chicken",
                              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                                  color: Colors.black,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(height: height*0.01),
                            Padding(
                              padding: EdgeInsets.only(right: 20,left:20),
                              child:  Text(
                                "Strips of Corn Fed Chicken breast cooked\nin a jalifrasiee style sauce with onion and\ngreen chilies,accompanied with light\nherbed rice.",
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                    color: Color(0xff9796A1), fontWeight: FontWeight.w300),
                              ),
                            ),
                            SizedBox(height: height*0.03),
                            Text(
                              "£11.55",
                              style: Theme.of(context).textTheme.displayLarge?.copyWith(
                                  color: Color(0xff911FDA),
                                  fontSize: 22,
                                  fontWeight: FontWeight.w700),
                            ),

                          ],
                        )),
                  ),
                )

              ],
            ),
          )

      ),

    );
  }
}