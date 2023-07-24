// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:the29029restaurant/view/bottombarscreen/menu/restaurantmenu/takeawaymenu.dart';
// import 'package:the29029restaurant/view/bottomnavigationbar/tab_screen.dart';
//
//
// class OnlineOrder2 extends StatefulWidget {
//   const OnlineOrder2({super.key});
//
//   @override
//   State<OnlineOrder2> createState() => _OnlineOrder2State();
// }
//
// class _OnlineOrder2State extends State<OnlineOrder2> {
//
//   @override
//   Widget build(BuildContext context) {
//     final height = MediaQuery.of(context).size.height;
//     final width = MediaQuery.of(context).size.width;
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         elevation: 0,
//         backgroundColor: Colors.white,
//         leading: GestureDetector(
//           onTap: () {
//             Get.to(() => TabScreen(index: 1));
//           },
//           child: Image.asset("assets/images/backbutton.png"),
//         ),
//         title: Text("Online Order",
//             style: Theme.of(context)
//                 .textTheme
//                 .titleLarge
//                 ?.copyWith(fontSize: 18, fontWeight: FontWeight.w600)),
//         centerTitle: true,
//       ),
//       body: SingleChildScrollView(
//         child: SafeArea(
//           child: Padding(
//             padding: const EdgeInsets.only(right: 20, left: 20),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 GridView.builder(
//                   physics: const NeverScrollableScrollPhysics(),
//                   shrinkWrap: true,
//                   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 2,
//                     childAspectRatio: .6,
//                     crossAxisSpacing: 12.0,
//                     mainAxisSpacing: 12.0,
//                      mainAxisExtent: 270,
//                   ),
//                   itemCount: 1,
//                   itemBuilder: (context, index) {
//                     return InkWell(
//                       onTap: (){
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) =>MenuUi(),
//                               //PartyMenu(),
//                             ));
//                       },
//                       child: Container(
//                         height: 100,
//                         width: 235,
//                         decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.circular(15)),
//                         child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               SizedBox(height: 5),
//                               ClipRRect(
//                                 borderRadius: BorderRadius.circular(15),
//                                 child: Image.asset(
//                                   "assets/images/menu.png",
//                                   //fit: BoxFit.fill,
//                                 ),
//                               ),
//                               SizedBox(height: height * 0.02),
//                               Text(
//                                 "Take Away Menu",
//                                 style: Theme.of(context)
//                                     .textTheme
//                                     .bodyLarge
//                                     ?.copyWith(fontWeight: FontWeight.w500),
//                                 // style: TextStyle(
//                                 //     fontWeight: FontWeight.w500,
//                                 //     fontSize: 14,
//                                 //     color: Colors.black,
//                                 //     fontFamily: GoogleFonts.outfit().fontFamily),
//                               ),
//                               SizedBox(height: height * 0.01),
//                               Text(
//                                 "Our Menu remains true to Classic Indian & Nepalese Receipes !",
//                                 style: TextStyle(
//                                     color: Color(0xff9796A1),
//                                     fontSize: 10,
//                                     fontFamily: GoogleFonts.outfit().fontFamily,
//                                     fontWeight: FontWeight.w300),
//                               ),
//                               SizedBox(height:height*0.02),
//                             //  Spacer(),
//                               Text(
//                                 "Go to Menu >",
//                                 style: Theme.of(context)
//                                     .textTheme
//                                     .bodySmall
//                                     ?.copyWith(
//                                         fontWeight: FontWeight.w400,
//                                         color: Color(0xff41004C)),
//                                 // style: TextStyle(
//                                 //     color: Color(0xff41004C),
//                                 //     fontSize: 12,
//                                 //     fontWeight: FontWeight.w400,
//                                 //     fontFamily:
//                                 //         GoogleFonts.outfit().fontFamily),
//                               )
//                             ]),
//                       ),
//                     );
//                   },
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the29029restaurant/data/response/status.dart';
import 'package:the29029restaurant/res/components/general_exception.dart';
import 'package:the29029restaurant/res/components/internet_exceptions_widget.dart';
import 'package:the29029restaurant/view/bottombarscreen/menu/menu.dart';
import 'package:the29029restaurant/view/bottombarscreen/menu/restaurantmenu/takeawaymenu.dart';
import 'package:the29029restaurant/view/bottombarscreen/onlineorder/onlineorder.dart';
import 'package:the29029restaurant/view/bottombarscreen/menu/ourpartymenu/partymenu.dart';
import 'package:the29029restaurant/view/bottomnavigationbar/bottomnavigation.dart';
import 'package:the29029restaurant/view/bottomnavigationbar/tab_screen.dart';
import 'package:the29029restaurant/view_models/controller/take_way_menu_controller.dart';

import '../homescreen/homescreen.dart';

class OnlineOrder2 extends StatefulWidget {
  const OnlineOrder2({super.key});

  @override
  State<OnlineOrder2> createState() => _OnlineOrder2State();
}

class _OnlineOrder2State extends State<OnlineOrder2> {

  Take_way_menu_controller take_way_menu_controller=Get.put(Take_way_menu_controller());

  @override

  void initState() {
    // TODO: implement initState
    take_way_menu_controller.takewayapihit();
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
          leading: GestureDetector(
            onTap: () {
              Get.to(() => TabScreen(index: 1));
            },
            child: Image.asset("assets/images/backbutton.png"),
          ),
          title: Text("Online Order",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(fontSize: 18, fontWeight: FontWeight.w600)),
          centerTitle: true,
        ),
        body:
        Obx(

                () {
              switch (take_way_menu_controller.rxRequestStatus.value) {
                case Status.LOADING:
                  return const Center(child: CircularProgressIndicator());
                case Status.ERROR:
                  if (take_way_menu_controller.error.value == 'No internet') {
                    return InterNetExceptionWidget(
                      onPress: () {},
                    );
                  } else {
                    return GeneralExceptionWidget(onPress: () {});
                  }
                case Status.COMPLETED:
                  return
                    SingleChildScrollView(
                      child: SafeArea(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 20, left: 20),
                          child:
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              GridView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  childAspectRatio: .6,
                                  crossAxisSpacing: 12,
                                  mainAxisSpacing: 12,
                                  mainAxisExtent: 270,
                                ),
                                itemCount:take_way_menu_controller.userList.value.takeAwayMenu!.length,
                                itemBuilder: (context, index) {
                                  return InkWell(
                                    onTap: (){
                                      Get.to(()=>TakeAwayMenu());
                                    },
                                    child: Container(
                                      height: 100,
                                      width: 235,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(15)),
                                      child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(height:height*0.01),
                                            ClipRRect(
                                              borderRadius: BorderRadius.circular(15),
                                              child: Image.network(
                                                take_way_menu_controller.userList.value.
                                                takeAwayMenu![index].categoryImg.toString(),
                                               // fit: BoxFit.fill,
                                              ),
                                            ),
                                            SizedBox(height: height * 0.02),
                                            Text(
                                              take_way_menu_controller.userList.value.
                                              takeAwayMenu![index].categoryName.toString(),
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyLarge
                                                  ?.copyWith(fontWeight: FontWeight.w500),
                                            ),
                                            SizedBox(height: height * 0.01),
                                            Text(
                                              take_way_menu_controller.userList.value.
                                              takeAwayMenu![index].categoryDescription.toString(),
                                              //"Our Menu remains true to Classic Indian & Nepalese Receipes !",
                                              style:
                                              TextStyle(
                                                  color: Color(0xff9796A1),
                                                  fontSize: 10,
                                                  fontFamily: GoogleFonts.outfit().fontFamily,
                                                  fontWeight: FontWeight.w300),
                                            ),
                                            SizedBox(height:height*0.02),
                                            Text(
                                              "Go to Menu >",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodySmall
                                                  ?.copyWith(
                                                  fontWeight: FontWeight.w400,
                                                  color: Color(0xff41004C)),
                                            )
                                          ]),
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    );



              }
            }
        )

    );
  }
}
