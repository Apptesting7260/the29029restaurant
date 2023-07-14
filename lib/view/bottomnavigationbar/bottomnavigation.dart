// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:the29029restaurant/view/bottombarscreen/bookatablepage/booksatable.dart';
// import 'package:the29029restaurant/view/bottombarscreen/homescreen.dart';
// import 'package:the29029restaurant/view/bottombarscreen/menu/menu.dart';
// import 'package:the29029restaurant/view/bottombarscreen/onlineorder/onlineorder.dart';
// import 'package:the29029restaurant/view/bottombarscreen/profile.dart';
//
// import '../../widgets/my_button.dart';
//
// class BottomNavigation extends StatefulWidget {
//   const BottomNavigation({super.key});
//
//   @override
//   State<BottomNavigation> createState() => _BottomNavigationState();
// }
//
// class _BottomNavigationState extends State<BottomNavigation> {
//   int index = 0;
//   final Screen = [
//     HomeScreen(),
//     Menu(),
//     BookATable() ,
//     Profile(),
//   ];
//
//   Future<void> showOptionsDialog(BuildContext context) {
//     final height = MediaQuery.of(context).size.height;
//     final width = MediaQuery.of(context).size.width;
//     return showDialog(
//         context: context,
//         builder: (BuildContext context) {
//           return AlertDialog(
//             actions: [
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   SizedBox(height:height*0.03),
//                   Center(
//                     child: Image.asset("assets/images/FullyBooked.png"),
//                   ),
//                   SizedBox(height:height*0.02),
//                   Center(
//                     child: Text(
//                       "Sorry!",
//                       style: Theme.of(context)
//                           .textTheme
//                           .headlineMedium
//                           ?.copyWith(
//                               fontSize: 20,
//                               color: Colors.black,
//                               fontWeight: FontWeight.w600,
//                               fontFamily: GoogleFonts.outfit().fontFamily),
//                     ),
//                   ),
//                   SizedBox(height: height*0.03),
//                   Center(
//                     child: Text(
//                       "We Are Fully Booked,",
//                       style: Theme.of(context).textTheme.titleMedium?.copyWith(
//                           fontWeight: FontWeight.w300,
//                           fontFamily: GoogleFonts.outfit().fontFamily),
//                     ),
//                   ),
//                   SizedBox(height:height*0.002),
//                   Center(
//                     child: Text(
//                       "05 May,-10May",
//                       style: TextStyle(
//                           color: Color(0xff777777),
//                           fontFamily: GoogleFonts.outfit().fontFamily),
//                     ),
//                   ),
//                   SizedBox(height:height*0.03),
//                   Center(
//                     child: MyButton(
//                         bgColor: Color(0xff41004C),
//                         title: "For Inquiries",
//                         onTap: () {
//                           Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                 builder: (context) => BookATable(),
//                               ));
//                         },
//                         height:50,
//                         width: 200),
//                   ),
//                   SizedBox(height:height*0.03)
//                 ],
//               )
//             ],
//           );
//         });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final height = MediaQuery.of(context).size.height;
//     final width = MediaQuery.of(context).size.width;
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Screen[index],
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: index,
//         onTap: (value) {
//           setState(() {
//             index = value;
//           });
//         },
//         backgroundColor: Colors.white,
//         selectedItemColor: Color(0xff41004C),
//         unselectedItemColor: Color(0xffD3D1D8),
//         type: BottomNavigationBarType.fixed,
//         showUnselectedLabels: true,
//         showSelectedLabels: true,
//         elevation: 0,
//
//         selectedFontSize: 9,
//         unselectedFontSize:9,
//         items: [
//           BottomNavigationBarItem(
//               icon:index==0 ?Image.asset("assets/images/icons/homeicon.png",
//                 height: 25,width: 25):Image.asset("assets/images/icons/unhomeicon.png",
//                   height: 25,width: 25)
//               ,label: "Home"),
//           BottomNavigationBarItem(
//               icon:index==1 ?Image.asset("assets/images/icons/menuicon.png",
//                 height: 25,width:25):Image.asset("assets/images/icons/unmenuicon.png",
//                   height: 25,width:25),
//               label: "menu"),
//
//           BottomNavigationBarItem(
//               icon: GestureDetector(
//                   onTap: () {
//                     showOptionsDialog(context);
//                   },
//                   child: index==2 ?Image.asset("assets/images/icons/bookatableicon.png",
//                       height: 25,width:25):Image.asset("assets/images/icons/unbookatableicon.png",
//                       height: 25,width:25)
//               ),
//               label: "Book A Table"),
//           BottomNavigationBarItem(icon: index==3 ?Image.asset("assets/images/icons/profile.png",
//             height:25,width:25,):Image.asset("assets/images/icons/unprofile.png",
//               height:25,width:25),
//               label: "Profile"),
//         ],
//       ),
//       floatingActionButtonLocation:FloatingActionButtonLocation.centerDocked,
//         floatingActionButton:FloatingActionButton(
//           backgroundColor: Colors.white,
//           shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(50),
//           side: BorderSide(color:Color(0xff41004C),width: 2)
//           ),
//           onPressed: (){
//           Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: (context) =>OnlineOrder(),
//               ));
//         }, child:Image.asset("assets/images/icons/onlineordericon.png",
//               height: 25,width:25),
//         ),
//
//     );
//   }
// }

import 'package:flutter/material.dart';

class  BottomNavigation extends StatefulWidget {
  final int bottomSelectedIndex;
  final Function bottomTapped;

  const  BottomNavigation({
    Key? key, required this.bottomSelectedIndex, required this.bottomTapped})
      : super(key: key);

  @override
   _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State <BottomNavigation> {
  List<BottomNavigationBarItem> bulidBottomNavBarItem=[
    const BottomNavigationBarItem(
        label: "Home",
        icon: ImageIcon(AssetImage("assets/images/icons/homeicon.png",)) ,
         activeIcon: ImageIcon(AssetImage("assets/images/icons/unhomeicon.png"))),

    const BottomNavigationBarItem(
        label: "Menu",
        icon: ImageIcon(AssetImage("assets/images/icons/menuicon.png",)) ,
        activeIcon: ImageIcon(AssetImage("assets/images/icons/unmenuicon.png"))),

    const BottomNavigationBarItem(
        label: "Book A Table",
        icon: ImageIcon(AssetImage("assets/images/icons/bookatableicon.png",)) ,
        activeIcon: ImageIcon(AssetImage("assets/images/icons/unbookatableicon.png"))),

    const BottomNavigationBarItem(
        label: "Profile",
        icon: ImageIcon(AssetImage("assets/images/icons/profile.png",)) ,
        activeIcon: ImageIcon(AssetImage("assets/images/icons/unprofile.png"))),

  ];

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: bulidBottomNavBarItem,
        selectedItemColor: Color(0xff41004C),
        unselectedItemColor: Color(0xffD3D1D8),

      elevation: 8,
      backgroundColor: Colors.white,
      showUnselectedLabels: true,
      showSelectedLabels: true,
      currentIndex: widget.bottomSelectedIndex,
      onTap: (index) => widget.bottomTapped(index),
      selectedFontSize: 12,
      unselectedFontSize: 10,
    );
  }
}

