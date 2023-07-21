import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the29029restaurant/view/bottombarscreen/homescreen/homescreen.dart';
import 'package:the29029restaurant/view/bottombarscreen/onlineorder/onlineorder.dart';
import 'package:the29029restaurant/view/bottombarscreen/menu/onlineorder2.dart';
import 'package:the29029restaurant/view/bottombarscreen/menu/ourpartymenu/partymenu.dart';
import 'package:the29029restaurant/view/bottomnavigationbar/bottomnavigation.dart';
import 'package:get/get.dart';
import 'package:the29029restaurant/view/bottomnavigationbar/tab_screen.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: height * 0.02),
                GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: .6,
                    crossAxisSpacing: 11,
                    mainAxisSpacing: 11,
                    mainAxisExtent: 270,
                  ),
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return
                      InkWell(
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => OnlineOrder2(),
                            ));
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
                              SizedBox(height: 5),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.asset(
                                  "assets/images/image.png",
                                  //fit: BoxFit.fill,
                                ),
                              ),
                              SizedBox(height: height * 0.02),
                              Text(
                                "Restaurant Menu",
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                              SizedBox(height: height * 0.01),
                              Text(
                                "Real Indian & Nepalese Cuisine\nserved with style & panache!",
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
                              Text(
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
                            ]),
                      ),
                    );
                  },
                ),
        //2 nd party menu
              //  SizedBox(height: height * 0.02),
                GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: .6,
                    crossAxisSpacing: 12.0,
                    mainAxisSpacing: 12.0,
                    mainAxisExtent: 270,
                  ),
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PartyMenu(),
                            ));
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
                              //SizedBox(height: 5),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.asset(
                                  "assets/images/party.png",
                                  //fit: BoxFit.fill,
                                ),
                              ),
                              SizedBox(height: height * 0.02),
                              Text(
                                "Our Party Menu",
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                              SizedBox(height: height * 0.01),
                              Text(
                                "The 29029 party menu brings a unique culinary extravaganza !",
                                // style: Theme.of(context).textTheme.
                                // labelSmall?.copyWith(
                                //   color: Color(0xff9796A1),
                                //  // fontFamily: GoogleFonts.outfit().fontFamily,
                                //   fontWeight: FontWeight.w300
                                // ),
                                style: TextStyle(
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
                                    ?.copyWith(fontWeight: FontWeight.w400,
                                    color: Color(0xff41004C),fontSize: 12,
                                    fontFamily:
                                    GoogleFonts.outfit().fontFamily),
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
      ),
    );
  }
}
