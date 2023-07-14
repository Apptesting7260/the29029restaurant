import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the29029restaurant/view/bottombarscreen/menu/onlineorder2.dart';
import 'package:the29029restaurant/view/bottomnavigationbar/bottomnavigation.dart';
import 'package:the29029restaurant/view/drawerscreen/aboutus.dart';
import 'package:the29029restaurant/view/drawerscreen/addreview.dart';
import 'package:the29029restaurant/view/drawerscreen/clientsays.dart';
import 'package:the29029restaurant/view/drawerscreen/fanwall.dart';
import 'package:the29029restaurant/view/drawerscreen/followus.dart';
import 'package:the29029restaurant/view/drawerscreen/location.dart';
import 'package:the29029restaurant/view/drawerscreen/photogallery.dart';
import 'package:the29029restaurant/view/login.dart';
import 'package:the29029restaurant/widgets/my_button.dart';
import '../bookatablepage/booksatable.dart';
import '../../drawerscreen/contactus.dart';
import '../../drawerscreen/fanwall1.dart';
import '../../drawerscreen/gps.dart';
import '../../drawerscreen/loyalty.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //final List<Map> myProducts = List.generate(100, (index) => {}).toList();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage("assets/images/user.png"),
            )
          ],
        ),
        leading: Builder(
          builder: (BuildContext context) {
             return  GestureDetector(
               onTap: (){
                 Scaffold.of(context).openDrawer();
                 MaterialLocalizations.of(context).openAppDrawerTooltip;
               },
               child: Image.asset("assets/images/drawer.png"),
             );
            // IconButton(
            //   icon: const Icon(
            //     Icons.menu,
            //     color: Color(0xff41004C),
            //   ),
            //   onPressed: () {
            //     Scaffold.of(context).openDrawer();
            //   },
            //   tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            // );
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(right: 20, left: 20),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: height * 0.001,
                ),
                Text(
                  "What would you like \n to order",
                  textAlign: TextAlign.start,
                  style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      color: Colors.black,
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                      fontFamily: GoogleFonts.outfit().fontFamily),
                ),
                SizedBox(height: height * 0.03),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search_sharp,
                        color: Color(0xff911FDA),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Find for food or restaurant...",
                      hintStyle:
                          Theme.of(context).textTheme.bodyMedium?.copyWith(
                                fontSize: 14,
                                color: Color(0xff9796A1),
                                fontWeight: FontWeight.w300,
                                fontFamily: GoogleFonts.outfit().fontFamily,
                              ),
                      contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Color(0xffDCDCDC))),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Color(0xffDCDCDC))),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Color(0xffDCDCDC)))),
                ),
                SizedBox(height: height * 0.03),
                CarouselSlider(
                  items: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                          image: AssetImage("assets/images/slider.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                  options: CarouselOptions(
                    height: 130,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    aspectRatio: 16 / 9,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    viewportFraction: 0.8,
                  ),
                ),
                SizedBox(height: height * 0.02),
                Text(
                  "Restaurant Main Menu",
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600,
                      fontFamily: GoogleFonts.outfit().fontFamily),
                ),
                SizedBox(height: height * 0.02),
                Container(
                  height: 130,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      // shrinkWrap: true,
                      itemCount: 10,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 6.5, left: 6.5),
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 33,
                                child: CircleAvatar(
                                  backgroundImage:
                                      AssetImage("assets/images/mainu.png"),
                                  radius: 33,
                                  // radius: ,
                                ),
                              ),
                            ),
                            SizedBox(height: height * 0.03),
                            Text(
                              "Starters",
                              // style: Theme.of(context).textTheme.labelSmall?.copyWith(
                              //   color: Color(0xff41004C),fontSize: 10,fontWeight: FontWeight.w400,
                              //   fontFamily: GoogleFonts.outfit().fontFamily
                              // ),
                              style: TextStyle(
                                  color: Color(0xff41004C),fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: GoogleFonts.outfit().fontFamily),
                            )
                          ],
                        );
                      }),
                ),
                SizedBox(height: height * 0.01),
                Text(
                  "Food Menu",
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontFamily: GoogleFonts.outfit().fontFamily,
                      color: Colors.black,fontSize: 18,
                      fontWeight: FontWeight.w600,
                      ),
                ),
                SizedBox(height: height * 0.02),
                GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: .6,
                    crossAxisSpacing: 12.0,
                    mainAxisSpacing: 12.0,
                     mainAxisExtent: 255,
                  ),
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return InkWell(
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
                              //SizedBox(height: 5),
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
                                "Real Indian & Nepalese Cuisine served with style & panache!",
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
                              SizedBox(height:height*0.03),
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
                //2 nd part
                SizedBox(height: height * 0.02),
                GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: .6,
                    crossAxisSpacing: 12.0,
                    mainAxisSpacing: 12.0,
                     mainAxisExtent: 255,
                  ),
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return Container(
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
                            // SizedBox(height:10),
                            SizedBox(height:height*0.03),
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
                    );
                  },
                ),
                SizedBox(height: height*0.05)
              ],
            ),
          ),
        ),
      ),
      drawer: Container(
        width: 240,
        height: 830,
        child: Drawer(
          backgroundColor: Colors.white,
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20, left: 20),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: InkWell(
                          onTap: () {
                            Get.back();
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image.asset('assets/drawericon/cross.png',
                                width: width * 0.04, height: height * 0.04),
                          ),
                        ),
                      ),
                    ),
                    CircleAvatar(
                      radius: 30,
                      backgroundImage:
                          AssetImage("assets/drawericon/image.png"),
                    ),
                    Text("Farion Wick",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                            fontFamily: GoogleFonts.outfit().fontFamily)
                        ),
                   // SizedBox(height: height*0.002),
                    Text(
                      "userdemo@gmail.com",
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.w300,fontSize: 14,
                          color: Color(0xff9EA1B1)),
                    )
                  ],
                ),
              ),

              // child: UserAccountsDrawerHeader(
              //   decoration: BoxDecoration(color: Colors.green),
              //   accountName: Text(
              //     'Farion Wick',
              //     style: TextStyle(color: Colors.black),
              //   ),
              //   accountEmail: Text(
              //     'userdemo@gamil.com',
              //     style: TextStyle(
              //         color: Color(0xff9EA1B1),
              //         fontSize: 14,
              //         fontWeight: FontWeight.w300,
              //         fontFamily: GoogleFonts.outfit().fontFamily),
              //   ),
              //   currentAccountPictureSize: Size.square(50),
              //   currentAccountPicture: CircleAvatar(
              //     backgroundImage: AssetImage("assets/images/user.png"),
              //   ),
              // ),

              SizedBox(height: height * 0.01),
              ListTile(
                visualDensity: VisualDensity.compact,
                dense: true,
                horizontalTitleGap: 0,
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.asset('assets/drawericon/aboutus.png',
                      width: width * 0.07, height: height * 0.07),
                ),
                title: Text("About Us",
                    style: Theme.of(context).textTheme.bodyLarge),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AboutUS(),
                      ));
                },
              ),
              ListTile(
                visualDensity: VisualDensity.compact,
                dense: true,
                horizontalTitleGap: 0,
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.asset('assets/drawericon/photogallery.png',
                      width: width * 0.07, height: height * 0.07),
                ),
                title: Text("Photo Gallery",
                    style: Theme.of(context).textTheme.bodyLarge),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PhotoGallery(),
                      ));
                },
              ),
              ListTile(
                visualDensity: VisualDensity.compact,
                dense: true,
                horizontalTitleGap: 0,
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.asset('assets/drawericon/followus.png',
                      width: width * 0.07, height: height * 0.07),
                ),
                title: Text("Follow Us",
                    style: Theme.of(context).textTheme.bodyLarge),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FollowUS(),
                      ));
                },
              ),
              ListTile(
                visualDensity: VisualDensity.compact,
                dense: true,
                horizontalTitleGap: 0,
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.asset('assets/drawericon/clientsays.png',
                      width: width * 0.07, height: height * 0.07),
                ),
                title: Text("Client say's",
                    style: Theme.of(context).textTheme.bodyLarge),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ClientSays(),
                      ));
                },
              ),
              ListTile(
                visualDensity: VisualDensity.compact,
                dense: true,
                horizontalTitleGap: 0,
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.asset('assets/drawericon/addreview.png',
                      width: width * 0.07, height: height * 0.07),
                ),
                title: Text("Add Review",
                    style: Theme.of(context).textTheme.bodyLarge),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AddReview(),
                      ));
                },
              ),
              ListTile(
                visualDensity: VisualDensity.compact,
                dense: true,
                horizontalTitleGap: 0,
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.asset('assets/drawericon/contactus.png',
                      width: width * 0.07, height: height * 0.07),
                ),
                title: Text("Contact Us",
                    style: Theme.of(context).textTheme.bodyLarge),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => contactus(),
                      ));
                },
              ),
              ListTile(
                visualDensity: VisualDensity.compact,
                dense: true,
                horizontalTitleGap: 0,
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.asset('assets/drawericon/loyalty.png',
                      width: width * 0.07, height: height * 0.07),
                ),
                title: Text("Loyalty",
                    style: Theme.of(context).textTheme.bodyLarge),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Loyalty(),
                      ));
                },
              ),
              ListTile(
                visualDensity: VisualDensity.compact,
                dense: true,
                horizontalTitleGap: 0,
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.asset('assets/drawericon/fanwall.png',
                      width: width * 0.07, height: height * 0.07),
                ),
                title: Text("Fan Wall",
                    style: Theme.of(context).textTheme.bodyLarge),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FanWall(),
                      ));
                },
              ),
              ListTile(
                visualDensity: VisualDensity.compact,
                dense: true,
                horizontalTitleGap: 0,
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.asset('assets/drawericon/location.png',
                      width: width * 0.07, height: height * 0.07),
                ),
                title: Text("Location",
                    style: Theme.of(context).textTheme.bodyLarge),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>Location(),
                      ));
                },
              ),
              ListTile(
                visualDensity: VisualDensity.compact,
                dense: true,
                horizontalTitleGap: 0,
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.asset('assets/drawericon/gps.png',
                      width: width * 0.07, height: height * 0.07),
                ),
                title: Text("GPS Coupon",
                    style: Theme.of(context).textTheme.bodyLarge),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => GPS(),
                      ));
                },
              ),
              SizedBox(height: height * 0.1),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Align(
                  alignment: Alignment.topLeft,
                 //child:
                  // MyButton(bgColor: Color(0xff41004C),
                  //     title:"LogOut", onTap:(){}, height:43, width:120),

                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginPage(),
                          ));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff41004C),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      fixedSize: Size(120, 43),
                    ),
                    child: Wrap(
                      children: [
                        CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 10,
                            child: Image.asset("assets/drawericon/logout.png")),
                        Text(
                          " Log Out",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                              fontFamily: GoogleFonts.outfit().fontFamily),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: height * 0.01)
            ],
          ),
        ),
      ),
    );
  }
}
