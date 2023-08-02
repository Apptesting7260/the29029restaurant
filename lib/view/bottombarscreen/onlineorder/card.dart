import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the29029restaurant/view/bottombarscreen/onlineorder/details.dart';
import 'package:the29029restaurant/widgets/my_button.dart';

class Card_Page extends StatefulWidget {
  const Card_Page({super.key});

  @override
  State<Card_Page> createState() => _Card_PageState();
}

class _Card_PageState extends State<Card_Page> {
  //var size, height, width;
  var count = 0;
  var result = 0;
  var tap = 0;
  List<Map<dynamic, dynamic>> li = [
    {
      'image': 'assets/drawericon/avocado sandwich (1).png',
      'head': 'Piyaza chicken',
      'subhead': "Strips of Corn Fed Chicken breast...",
      'rate': '£11.55'
    }
  ];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor:Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading:GestureDetector(onTap: (){
          Get.to(()=> Detalis());
        },
          child: Image.asset("assets/images/backbutton.png"),
        ),
        title: Text("Cart",
            style:Theme.of(context).
            textTheme.
            titleLarge?.copyWith(
                fontSize: 18,fontWeight: FontWeight.w600)
        ),
        centerTitle: true,
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          child:
              Padding(padding: EdgeInsets.only(right: 20,left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: height / 6.5,
                child: ListView(
                    children: li.map((e) => Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(e['image']!),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [Text(e['head']!,
                                    style: Theme.of(context)
                                        .textTheme.bodySmall
                                        ?.copyWith(color: Color(0xff000000),
                                        fontSize: 18, fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(width: width/5,),
                                  InkWell(
                                    onTap: () {li.removeAt(0);
                                      setState(() {});},
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(0,0,0,0),
                                      child: Align(alignment: Alignment(0,0),
                                        child: Container(child: Icon(Icons.close,color: Color(0xff41004C),),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: width * 0.01,),
                              Text(
                                e['subhead']!,
                                style: Theme.of(context)
                                    .textTheme.bodySmall?.copyWith(
                                    color: Color(0xff8C8A9D),
                                    fontSize: 13, fontWeight: FontWeight.w300),
                              ),
                              SizedBox(height: width * 0.04),
                              Text(e['rate']!,
                                style: Theme.of(context)
                                    .textTheme.bodySmall
                                    ?.copyWith(color: Color(0xff911FDA),
                                    fontSize: 16, fontWeight: FontWeight.w700),
                              )
                            ],
                          ),

                        ],
                      ),
                    ))
                        .toList()),
              ),
              Row(
                children: [
                  SizedBox(
                    width: width / 3.5,
                  ),
                  InkWell(
                      onTap: () {
                        tap = 1;
                        if (count > 0) {
                          count = count - 1;
                        }
                        result = count;
                        setState(() {});
                      },
                      child: Container(
                        child: tap == 1
                            ? Icon(Icons.remove_circle, color: Color(0xff41004c))
                            : Icon(Icons.remove_circle_outline),
                      )),
                  SizedBox(
                    width: width / 80,
                  ),
                  Container(
                      child: result < 10
                          ? Text(
                        "0$result",
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge
                            ?.copyWith(
                            color: Color(0xff000000),
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      )
                          : Text(
                        "$result",
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge
                            ?.copyWith(
                            color: Color(0xff000000),
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      )),
                  SizedBox(
                    width: width / 80,
                  ),
                  InkWell(
                      onTap: () {
                        tap = 2;
                        count = count + 1;
                        result = count;
                        setState(() {});
                      },
                      child: Container(
                          child: tap == 2
                              ? Icon(Icons.add_circle, color: Color(0xff41004c))
                              : Icon(Icons.add_circle_outline)))
                ],
              ),
              SizedBox(height: height*0.03),
             Text("Specific instructions/table number",
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Color(0xff000000), fontSize: 16, fontWeight: FontWeight.w500),),
              SizedBox(height: height*0.02),
              TextFormField(
                //   controller: firstname,
                keyboardType: TextInputType.name,
                maxLines: 4,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xffFAFAFA),
                    hintText: "Enter Specific instructions/table number",
                    hintStyle: TextStyle(
                        color: Color(0xff9796A1),
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        fontFamily: GoogleFonts.outfit().fontFamily),
                    contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Color(0xffDCDCDC))),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Color(0xffDCDCDC))),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide:
                        BorderSide(color: Color(0xffDCDCDC)))),
                onFieldSubmitted: (value) {},
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'enter the reviews';
                  }
                  return null;
                },
              ),
              SizedBox(height:height*0.05),
              Center(child: MyButton(bgColor: Color(0xff41004C),
                  side: BorderSide(color: Color(0xff41004C)),
                  title:"Checkout",
                  txtStyle:Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontFamily: GoogleFonts.outfit().fontFamily),
                  onTap:(){ },
                  height: height*.07,
                  width: width*0.5),)


            ],
          ),

              )
        ),
      ),
    );
  }
}
