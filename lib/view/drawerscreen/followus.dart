import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the29029restaurant/view_models/controller/Drawer_Controller/followus/followus_controller.dart';

class FollowUS extends StatefulWidget {
  const FollowUS({super.key});

  @override
  State<FollowUS> createState() => _FollowUSState();
}

class _FollowUSState extends State<FollowUS> {
  FollowUS_controller followUS_controller=Get.put(FollowUS_controller());
  @override
  void initState() {
    followUS_controller.follwusapihit();
    super.initState();
  }
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading:GestureDetector(onTap: (){
          Navigator.pop(context);
        },
          child: Image.asset("assets/images/backbutton.png"),
        ),
        title: Text("Follow Us",
            style:Theme.of(context).
            textTheme.
            titleLarge?.copyWith(
                fontSize: 18,fontWeight: FontWeight.w600)
        ),
        centerTitle: true,
      ),
        body:
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(right: 20,left: 20),
            child: Column(
              children:[
                SizedBox(height: height*0.03),

                ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount:
                 // followUS_controller.userList.value.followUs!.length,
                  3,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xffF5F5F5),
                        ),
                        child: Column(
                          children: [
                            ListTile(
                              horizontalTitleGap: 0,
                              onTap: () {},
                              tileColor: Color(0xffF5F5F5),
                              shape: OutlineInputBorder(
                                borderSide: BorderSide(color:Color(0xffF5F5F5)),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              leading:ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child: 
                                  Icon(Icons.facebook)
                                
                                // Image.asset('assets/images/facebooks.png',
                                //     width: 25, height: 25
                                // ),
                              ),
                              title: Text(
                                //followUS_controller.userList.value.followUs![index].socialName

                                "Facebook",
                                style:
                                Theme.of(context).textTheme.bodySmall?.copyWith(
                                    color: Color(0xff323643), fontSize: 12,
                                    fontFamily: GoogleFonts.outfit().fontFamily,
                                    fontWeight: FontWeight.w600),
                              ),
                              trailing: TextButton(
                                  onPressed: () {

                                  },
                                  child: Text(
                                    "Follow >",
                                    style: TextStyle(color: Color(0xff41004C),fontSize: 12),
                                  )),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),


              //
              //   ListTile(
              //     horizontalTitleGap: 0,
              //     onTap: () {},
              //     tileColor: Color(0xffF5F5F5),
              //     shape: OutlineInputBorder(
              //       borderSide: BorderSide(color:Color(0xffF5F5F5)),
              //       borderRadius: BorderRadius.circular(10),
              //     ),
              //     leading:ClipRRect(
              //       borderRadius: BorderRadius.circular(20.0),
              //       child: Image.asset('assets/images/facebooks.png',
              //           width: 25, height: 25
              //       ),
              //     ),
              //   title: Text(
              //     "Facebook",
              //     style:
              //     Theme.of(context).textTheme.bodySmall?.copyWith(
              //         color: Color(0xff323643), fontSize: 12,
              //         fontFamily: GoogleFonts.outfit().fontFamily,
              //         fontWeight: FontWeight.w600),
              //   ),
              //   trailing: TextButton(
              //       onPressed: () {},
              //       child: Text(
              //         "Follow >",
              //         style: TextStyle(color: Color(0xff41004C),fontSize: 12),
              //       )),
              // ),
              //   SizedBox(height: height*0.02),
              //   ListTile(
              //     horizontalTitleGap: 0,
              //     onTap: () {},
              //     tileColor: Color(0xffF5F5F5),
              //     shape: OutlineInputBorder(
              //       borderSide: BorderSide(color:Color(0xffF5F5F5)),
              //       borderRadius: BorderRadius.circular(10),
              //     ),
              //     leading:ClipRRect(
              //      borderRadius: BorderRadius.circular(20.0),
              //       child:
              //       //Icon(Icons.import_contacts_sharp,size: 25,)
              //        Image.asset('assets/images/trip.png',
              //       width: 25, height: 25
              //        ),
              //     ),
              //        title: Text(
              //       "TripAdvisor",
              //       style:
              //            Theme.of(context).textTheme.bodySmall?.copyWith(
              //              color: Color(0xff323643), fontSize: 12,
              //              fontFamily: GoogleFonts.outfit().fontFamily,
              //                fontWeight: FontWeight.w600),
              //            ),
              //     trailing: TextButton(
              //         onPressed: () {},
              //         child: Text(
              //           "Follow >",
              //           style: TextStyle(color: Color(0xff41004C),fontSize: 12),
              //         )),
              //   ),
              //   SizedBox(height: height*0.02),
              //   ListTile(
              //     horizontalTitleGap: 0,
              //     onTap: () {},
              //     tileColor: Color(0xffF5F5F5),
              //     shape: OutlineInputBorder(
              //       borderSide: BorderSide(color:Color(0xffF5F5F5)),
              //       borderRadius: BorderRadius.circular(10),
              //     ),
              //     leading:ClipRRect(
              //       borderRadius: BorderRadius.circular(20.0),
              //       child: Image.asset('assets/images/twitter.png',
              //           width: 25, height: 25
              //       ),
              //     ),
              //     title: Text(
              //       "Twitter",
              //       style:
              //       Theme.of(context).textTheme.bodySmall?.copyWith(
              //           color: Color(0xff323643), fontSize: 12,
              //           fontFamily: GoogleFonts.outfit().fontFamily,
              //           fontWeight: FontWeight.w600),
              //     ),
              //     trailing: TextButton(
              //         onPressed: () {},
              //         child: Text(
              //           "Follow >",
              //           style: TextStyle(color: Color(0xff41004C),fontSize: 12),
              //         )),
              //   ),

            ]
            ),
          ),
        ),

    );
  }
}
