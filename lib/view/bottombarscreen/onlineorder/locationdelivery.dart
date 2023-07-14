import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the29029restaurant/view/bottombarscreen/onlineorder/addnewaddress.dart';
import 'package:the29029restaurant/view/bottombarscreen/onlineorder/locationcollection.dart';
import 'package:the29029restaurant/widgets/my_button.dart';

class LUi extends StatefulWidget {
  const LUi({super.key});

  @override
  State<LUi> createState() => _LUiState();
}

class _LUiState extends State<LUi> {
  var size, height, width;
  var c = 2;

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
                          MaterialPageRoute(builder: (context) => LoteUi()));
                    },
                    child: Container(
                        child: Image.asset("assets/drawericon/Group 17955.png"))),
                Center(
                  child: Column(
                    children: [
                      Container(
                        // color: Colors.red,
                          child: Center(
                              child: Text(
                                "Location",
                                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                                    color: Color(0xff323643), fontWeight: FontWeight.w600),
                              ))),

                    ],
                  ),
                ),
                Container()
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
                height: height / 55,
              ),
              SingleChildScrollView(
                // scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: width / 8,
                            height: height / 8,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xff911FDA).withOpacity(0.10),
                            ),
                            child: Icon(Icons.location_on),
                          ),

                        ],
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
                                  "    Sandford Rd, Sandford, Wareham BH20 \n    7DD, United Kingdom",
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
                      c = 1;
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
                          style: TextStyle(
                            fontSize: 12,
                            fontFamily: GoogleFonts.outfit().fontFamily,
                            color:
                            c == 1 ? Color(0xffffffff) : Color(0xff9796A1),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: width / 20,
                  ),
                  InkWell(
                    onTap: () {
                      c = 2;
                      setState(() {});
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
                          style: TextStyle(
                            fontSize: 12,
                            fontFamily: GoogleFonts.outfit().fontFamily,
                            color:
                            c == 2 ? Color(0xffffffff) : Color(0xff9796A1),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: height / 15,
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: width / 20),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Delivery Adress",
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          color: Color(0xff323643),
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    ),
                  )),
              SizedBox(
                height: height / 25,
              ),
              Center(
                child: Container(
                  height: height / 5,
                  width: width / 1.07,
                  decoration: BoxDecoration(color: Color(0xffF5F5F5),
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: width / 35),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Farion Wick",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge
                                    ?.copyWith(
                                    color: Color(0xff323643),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18)),
                            Icon(Icons.edit_outlined,color: Color(0xff41004C),)
                          ],
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: width/45,
                          ),
                          Icon(
                            Icons.location_on,
                            color: Color(0xff911FDA),
                          ),
                          SizedBox(width: 10,),
                          Text(
                              "D No. 27-33-1,Kamaraju Centre, Gudavallivari \nStreet,Governerpet,Vijayawada-520002",  style: Theme.of(context)
                              .textTheme
                              .titleLarge
                              ?.copyWith(
                              color: Color(0xff777777),
                              fontWeight: FontWeight.w700,
                              fontSize: 14))
                        ],
                      ),

                      Row(

                        children: [
                          SizedBox(
                            width: width/45,
                          ),
                          Icon(Icons.call, color: Color(0xff911FDA)),
                          SizedBox(width: 10,),
                          Text("+91 9876543210",style: Theme.of(context)
                              .textTheme
                              .titleLarge
                              ?.copyWith(
                              color: Color(0xff777777),
                              fontWeight: FontWeight.w700,
                              fontSize: 14))
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height / 20,
              ),
              MyButton(bgColor: Color(0xff41004C),
                  title: "Add New Address", onTap:(){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>AddANewAddress()));
              }, height:50, width:200),
              // Center(
              //   child: InkWell(
              //     onTap: () {
              //       Navigator.push(context, MaterialPageRoute(builder: (context)=>AddANewAddress()));
              //     },
              //     child: Container(
              //       height: height / 12.8,
              //       width: width / 2,
              //       child: Center(
              //           child: Text(
              //             "Add New Adress",
              //             style: TextStyle(color: Colors.white),
              //           )),
              //       decoration: BoxDecoration(
              //           borderRadius: BorderRadius.circular(100),
              //           color: Color(0xff41004C)),
              //     ),
              //   ),
              // ),
              SizedBox(
                height: height / 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
