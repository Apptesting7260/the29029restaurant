import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the29029restaurant/data/response/status.dart';
import 'package:the29029restaurant/res/components/general_exception.dart';
import 'package:the29029restaurant/res/components/internet_exceptions_widget.dart';
import 'package:the29029restaurant/view/bottombarscreen/menu/onlineorder2.dart';
import 'package:get/get.dart';
import 'package:the29029restaurant/view_models/controller/menu_page_controller.dart';
 int ?categoryid;
class Menu extends StatefulWidget {

  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  Menu_Controller menu_Controller=Get.put(Menu_Controller());

  void initState() {

    menu_Controller.menuapihit();
    super.initState();
  }
  @override
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
            // Get.to(() => TabScreen(index: 1,));

          },
          child: Image.asset("assets/images/backbutton.png"),
        ),
        title: Text("Menu",
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(fontSize: 18, fontWeight: FontWeight.w600)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
                padding: const EdgeInsets.only(right: 20, left: 20),
                child:
                Obx(

                        () {
                      switch (menu_Controller.rxRequestStatus.value) {
                        case Status.LOADING:
                          return const Center(child: CircularProgressIndicator());
                        case Status.ERROR:
                          if (menu_Controller.error.value == 'No internet') {
                            return InterNetExceptionWidget(
                              onPress: () {},
                            );
                          } else {
                            return GeneralExceptionWidget(onPress: () {});
                          }
                        case Status.COMPLETED:
                          return
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(height: height * 0.02),
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
                                  itemCount: menu_Controller.userList.value.categoryMainMenu!.length,
                                  itemBuilder: (context, index) {
                                    return InkWell(
                                      onTap: (){
                                        setState(() {
                                          categoryid= menu_Controller.userList.value.
                                          categoryMainMenu![index].categoryId;
                                        });
                                        // print(categoryid);

                                        Get.to(()=> OnlineOrder2());
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
                                                  menu_Controller.userList.value.
                                                  categoryMainMenu![index].categoryImg.toString(),
                                                  //fit: BoxFit.fill,
                                                ),
                                              ),
                                              SizedBox(height: height * 0.02),
                                              Text(
                                                menu_Controller.userList.value.
                                                categoryMainMenu![index].categoryName.toString(),
                                                style: Theme.of(context).textTheme.bodyLarge,
                                              ),
                                              SizedBox(height: height * 0.01),
                                              Text(
                                                menu_Controller.userList.value.
                                                categoryMainMenu![index].categoryDescription.toString(),
                                                // style: Theme.of(context).
                                                // textTheme.
                                                // labelSmall?.copyWith(color:Color(0xff9796A1),fontWeight: FontWeight.w300,
                                                //   fontFamily: GoogleFonts.outfit().fontFamily,
                                                // ),
                                                style: TextStyle(
                                                    color: Color(0xff9796A1),
                                                    fontSize: 10,
                                                    fontFamily: GoogleFonts.outfit().fontFamily,
                                                    fontWeight: FontWeight.w300),
                                              ),
                                              SizedBox(height:height*0.02),
                                              // Spacer(),
                                              InkWell(
                                                child: Text(
                                                  "Go to Menu >",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodySmall
                                                      ?.copyWith(
                                                      color: Color(0xff41004C),
                                                      fontWeight: FontWeight.w400,
                                                      fontSize: 12,
                                                      fontFamily:
                                                      GoogleFonts.outfit().fontFamily),
                                                ),
                                                onTap: (){

                                                },
                                              ),
                                            ]
                                        ),







                                      ),
                                    );
                                  },
                                ),
                                //2 nd party menu
                                //  SizedBox(height: height * 0.02),
                                // GridView.builder(
                                //   physics: const NeverScrollableScrollPhysics(),
                                //   shrinkWrap: true,
                                //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                //     crossAxisCount: 2,
                                //     childAspectRatio: .6,
                                //     crossAxisSpacing: 12.0,
                                //     mainAxisSpacing: 12.0,
                                //     mainAxisExtent: 270,
                                //   ),
                                //   itemCount: 2,
                                //   itemBuilder: (context, index) {
                                //     return InkWell(
                                //       onTap: (){
                                //         Navigator.push(
                                //             context,
                                //             MaterialPageRoute(
                                //               builder: (context) => PartyMenu(),
                                //             ));
                                //       },
                                //       child: Container(
                                //         height: 100,
                                //         width: 235,
                                //         decoration: BoxDecoration(
                                //             color: Colors.white,
                                //             borderRadius: BorderRadius.circular(15)),
                                //         child: Column(
                                //             crossAxisAlignment: CrossAxisAlignment.start,
                                //             children: [
                                //               //SizedBox(height: 5),
                                //               ClipRRect(
                                //                 borderRadius: BorderRadius.circular(15),
                                //                 child: Image.asset(
                                //                   "assets/images/party.png",
                                //                   //fit: BoxFit.fill,
                                //                 ),
                                //               ),
                                //               SizedBox(height: height * 0.02),
                                //               Text(
                                //                 "Our Party Menu",
                                //                 style: Theme.of(context).textTheme.bodyLarge,
                                //               ),
                                //               SizedBox(height: height * 0.01),
                                //               Text(
                                //                 "The 29029 party menu brings a unique culinary extravaganza !",
                                //                 // style: Theme.of(context).textTheme.
                                //                 // labelSmall?.copyWith(
                                //                 //   color: Color(0xff9796A1),
                                //                 //  // fontFamily: GoogleFonts.outfit().fontFamily,
                                //                 //   fontWeight: FontWeight.w300
                                //                 // ),
                                //                 style: TextStyle(
                                //                     color: Color(0xff9796A1),
                                //                     fontSize: 10,
                                //                     fontFamily: GoogleFonts.outfit().fontFamily,
                                //                     fontWeight: FontWeight.w300),
                                //               ),
                                //               SizedBox(height:height*0.02),
                                //               Text(
                                //                 "Go to Menu >",
                                //                 style: Theme.of(context)
                                //                     .textTheme
                                //                     .bodySmall
                                //                     ?.copyWith(fontWeight: FontWeight.w400,
                                //                     color: Color(0xff41004C),fontSize: 12,
                                //                     fontFamily:
                                //                     GoogleFonts.outfit().fontFamily),
                                //               )
                                //             ]),
                                //       ),
                                //     );
                                //   },
                                // ),

                                SizedBox(height: height*0.01,),
                              ],
                            );

                      }
                    }
                ) )
        ),
      ),
    );
  }
}
