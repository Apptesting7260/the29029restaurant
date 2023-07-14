import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:the29029restaurant/view/bottombarscreen/onlineorder/categories.dart';
import 'package:the29029restaurant/view/bottombarscreen/onlineorder/locationdelivery.dart';
import 'package:the29029restaurant/view/bottombarscreen/onlineorder/onlinelocation.dart';
import 'package:the29029restaurant/view/bottomnavigationbar/tab_screen.dart';
import 'package:the29029restaurant/widgets/my_button.dart';
import 'package:get/get.dart';

class LoteUi extends StatefulWidget {
  const LoteUi({super.key});

  @override
  State<LoteUi> createState() => _LoteUiState();
}

class _LoteUiState extends State<LoteUi> {
  TextEditingController dateInput = TextEditingController();

  @override
  void initState() {
    dateInput.text = ""; //set the initial value of text field
    super.initState();
  }

  var choice = 1;
  var size, height, width;
  var c = 1;
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
                 // Get.to(() => TabScreen(index: 2));
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>LocationUi()));
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
                    Column(
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
                                "  Sandford Rd, Sandford, Wareham BH20 \n  7DD,United Kingdom",
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
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                          width: width / 8,
                          height: height / 8,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xff911FDA),
                          ),
                          child: Image.asset("assets/drawericon/Mask group (2).png")
                      ),
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
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>LUi()));
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
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width / 25),
                  child: Text(
                    "Date",
                    style: Theme.of(context).textTheme.displayLarge?.copyWith(
                        color: Color(0xff000000),
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              SizedBox(
                height: height / 60,
              ),
              Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal:
                      MediaQuery.of(context).size.width / 35), // error
                  child: Container(
                    // padding: EdgeInsets.all(15),
                      child: Center(
                          child: TextField(

                            controller: dateInput,
                            //editing controller of this TextField
                            decoration: InputDecoration(
                              filled: true, //<-- SEE HERE
                              fillColor: Color(0xffFAFAFA),
                              enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(70)),
                              focusedBorder: OutlineInputBorder(borderRadius:BorderRadius.circular(70)),
                              suffixIcon: Container(child: Padding(
                                padding: EdgeInsets.only(
                                    top: MediaQuery.of(context).size.width / 25),
                                child: Text("today",style: TextStyle(color: Color(0xff911FDA)),),
                              )), //icon of text field
                            ),
                            readOnly: true,
                            //set it true, so that user will not able to edit text
                            onTap: () async {
                              DateTime? pickedDate = await showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(1950),
                                  //DateTime.now() - not to allow to choose before today.
                                  lastDate: DateTime(2100));

                              if (pickedDate != null) {
                                print(
                                    pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                                String formattedDate =
                                DateFormat('dd/MM/yyyy').format(pickedDate);
                                print(
                                    formattedDate); //formatted date output using intl package =>  2021-03-16
                                setState(() {
                                  dateInput.text =
                                      formattedDate; //set output date to TextField value.
                                });
                              } else {}
                            },
                          )))
              ),
              SizedBox(
                height: height / 60,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width / 25),
                  child: Text(
                    "Time",
                    style: Theme.of(context).textTheme.displayLarge?.copyWith(
                        color: Color(0xff000000),
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              SizedBox(
                height: height / 40,
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
                          // Navigator.push(context, MaterialPageRoute(builder: (context)=>MenuUi()));
                          setState(() {});
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: choice == 1
                                ? Color(0xff911FDA)
                                : Color(0xffffff),
                            borderRadius: BorderRadius.circular(20),
                            border:
                            Border.all(width: 1, color: Color(0xff9796A1)),
                          ),
                          child: Center(
                              child: Text("ASAP 6:45 PM",
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
                            border:
                            Border.all(width: 1, color: Color(0xff9796A1)),
                          ),
                          child: Center(
                              child: Text("ASAP 7:10 PM",
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
                          setState(() {});
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: choice == 3
                                ? Color(0xff911FDA)
                                : Color(0xffffff),
                            borderRadius: BorderRadius.circular(20),
                            border:
                            Border.all(width: 1, color: Color(0xff9796A1)),
                          ),
                          child: Center(
                              child: Text(
                                "ASAP 7:35 PM",
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
                            border:
                            Border.all(width: 1, color: Color(0xff9796A1)),
                          ),
                          child: Center(
                              child: Text("ASAP 8:00 PM",
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
                height: height / 15,
              ),
              MyButton(bgColor: Color(0xff41004C),
                  title: "Choose Items", onTap:(){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>CatUi()));
              }, height:50, width:200),
              // Center(
              //   child: InkWell(
              //     onTap: () {
              //       Navigator.push(context,
              //           MaterialPageRoute(builder: (context) =>CatUi()));
              //     },
              //     child: Container(
              //       height: height / 12.8,
              //       width: width / 2,
              //       child: Center(
              //           child: Text(
              //             "Choose Items",
              //             style: TextStyle(color: Colors.white),
              //           )),
              //       decoration: BoxDecoration(
              //           borderRadius: BorderRadius.circular(100),
              //           color: Color(0xff41004C)),
              //     ),
              //   ),
              // ),
              SizedBox(
                height: height / 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
