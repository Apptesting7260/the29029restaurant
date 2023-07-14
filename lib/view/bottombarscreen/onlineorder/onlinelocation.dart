import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the29029restaurant/view/bottombarscreen/onlineorder/locationcollection.dart';
import 'package:the29029restaurant/view/bottombarscreen/onlineorder/onlineorder.dart';
import 'package:the29029restaurant/widgets/my_button.dart';

class LocationUi extends StatefulWidget {
  const LocationUi({super.key});

  @override
  State<LocationUi> createState() => _LocationUiState();
}

class _LocationUiState extends State<LocationUi> {
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
                InkWell(onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>OnlineOrder()));
                },

                    child: Container(child: Image.asset("assets/drawericon/Group 17955.png"))),
                Center(
                  child: Container(
                    // color: Colors.red,
                      child: Center(
                          child: Text(
                            "Location",
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
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: height/29,
              ),
              Padding(
                padding:  EdgeInsets.symmetric(
                    horizontal: width / 24),
                child: Container(
                  height: height/3.5,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset("assets/drawericon/mappppp.png",
                        fit: BoxFit.fill),
                  ),
                ),
              ),
              SizedBox(
                height: height / 25,
              ),
              SingleChildScrollView(
                // scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        width: width / 7,
                        height: height / 7,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xff911FDA).withOpacity(0.10),
                        ),
                        child: Icon(Icons.location_on),
                      ),
                    ),
                    // SizedBox(
                    //   width: width / 19,
                    // ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "The 29029 Restaurant Wareham",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                  color: Color(0xff0000000),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14),
                            ),
                          ),

                          Align(
                            alignment: Alignment.center,
                            child: Center(
                              child: Text(
                                  "  Sandford Rd, Sandford, Wareham BH20 \n  7DD, United Kingdom",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall
                                      ?.copyWith(
                                      color: Color(0xff9796A1),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // SizedBox(
                    //   width: width / 19,
                    // ),
                    Container(
                        width: width / 9,
                        height: height / 9,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xff911FDA),
                        ),
                        child:Image.asset("assets/drawericon/Mask group (2).png")
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height / 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      c=1;
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>LoteUi()));

                      setState(() {});
                    },
                    child: Container(
                      height: height / 15,
                      width: width / 3.5,
                      decoration: BoxDecoration(
                          color: c == 1 ? Color(0xff911FDA) : Color(0xffffff),
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            color: Color(0xff911FDA),
                          )),
                      child: Center(
                        child: Text(
                          "Collection",
                          style:
                          TextStyle(
                            fontSize: 12,
                            fontFamily:
                            GoogleFonts.outfit().fontFamily,
                            color: c == 1
                                ? Color(0xffffffff)
                                : Color(0xff911FDA),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: width / 20,
                  ),
                  InkWell(
                    onTap: (){
                      c=2;
                      setState(() {

                      });
                    },
                    child: Container(
                      height: height / 15,
                      width: width / 3.5,
                      decoration: BoxDecoration(
                          color: c == 2 ? Color(0xff911FDA) : Color(0xffffff),
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Color(0xff911FDA))),
                      child: Center(
                        child: Text(
                          "Delivery",
                          style:
                          TextStyle(
                            fontSize: 12,
                            fontFamily:
                            GoogleFonts.outfit().fontFamily,
                            color: c == 2
                                ? Color(0xffffffff)
                                : Color(0xff911FDA),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: height/15,
              ),
              MyButton(bgColor: Color(0xff41004C),
                  title:"Choose Items",
                  onTap:(){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoteUi()));
                  }, height:50, width:200)
              // Center(
              //   child: InkWell(
              //     onTap: (){
              //       Navigator.push(context, MaterialPageRoute(builder: (context)=>LoteUi()));
              //     },
              //     child: Container(
              //       height: height/12.8,
              //       width: width/2,
              //       child: Center(child: Text("Choose Items",style: TextStyle(color: Colors.white),)),
              //       decoration: BoxDecoration(
              //           borderRadius: BorderRadius.circular(100),
              //           color: Color(0xff41004C)
              //       ),
              //     ),
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
