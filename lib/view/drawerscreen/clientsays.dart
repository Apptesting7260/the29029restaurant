// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:the29029restaurant/widgets/my_button.dart';
// import 'package:the29029restaurant/widgets/my_textform_field_widget.dart';
//
// class ClientSays extends StatefulWidget {
//   const ClientSays({super.key});
//
//   @override
//   State<ClientSays> createState() => _ClientSaysState();
// }
//
// class _ClientSaysState extends State<ClientSays> {
//   List<Map<String, String>> data = [
//     {"Name": "About Company", "url": ""},
//     {"Name": "Our Menu", "url": ""},
//     {"Name": "Buffet", "url": ""},
//     {"Name": "Catering", "url": ""},
//     {"Name": "Submit Reviews", "url": ""},
//     {"Name": "Contact Us", "url": ""},
//     {"Name": "Privacy police", "url": ""},
//     {"Name": "Terms Use", "url": ""},
//     {"Name": "Google Tour", "url": ""}
//   ];
//   TextEditingController title = TextEditingController();
//   TextEditingController review = TextEditingController();
//   TextEditingController name = TextEditingController();
//   TextEditingController email = TextEditingController();
//
//   late double ratingValue;
//
//
//
//   var _formKey = GlobalKey<FormState>();
//   void _submit() {
//     final isValid = _formKey.currentState!.validate();
//     if (!isValid) {
//       return;
//     }
//     _formKey.currentState!.save();
//   }
//   @override
//   Widget build(BuildContext context) {
//     final height = MediaQuery.of(context).size.height;
//     final width = MediaQuery.of(context).size.width;
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         elevation: 0,
//         backgroundColor: Colors.white,
//         leading:IconButton(
//             onPressed: () {
//               Navigator.pop(context);
//             },
//             icon: Icon(
//               Icons.chevron_left,
//               color: Color(0xff911FDA),
//             )),
//         title: Text("Client Say's",
//             style:Theme.of(context).
//             textTheme.
//             titleLarge?.copyWith(
//                 fontSize: 18,fontWeight: FontWeight.w600)
//         ),
//         centerTitle: true,
//       ),
//       body: Form(
//         key:_formKey,
//         child: SingleChildScrollView(
//           child: SafeArea(
//             child: Padding(
//               padding: const EdgeInsets.only(right: 20, left: 20),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   SizedBox(height: height * 0.02),
//                   Image.asset("assets/drawericon/Group.png"),
//                   SizedBox(height: height * 0.03),
//                   Text(
//                     "Your Overall Rating",
//                     style: Theme.of(context)
//                         .textTheme
//                         .titleMedium
//                         ?.copyWith(fontWeight: FontWeight.w500),
//                   ),
//                   SizedBox(height: height * 0.003),
//                   InkWell(
//                     onTap: () {},
//                     child: ClipRRect(
//                       borderRadius: BorderRadius.circular(20.0),
//                       child: Image.asset('assets/drawericon/star.png',
//                           width: width * 0.3, height: height * 0.05),
//                     ),
//                   ),
//                   SizedBox(height: height * 0.02),
//                   Text(
//                     "Title Of Your Review",
//                     style: Theme.of(context)
//                         .textTheme
//                         .titleMedium
//                         ?.copyWith(fontWeight: FontWeight.w500),
//                   ),
//                   SizedBox(height: height * 0.005),
//                   TextFormField(
//                     controller: title,
//                     keyboardType: TextInputType.emailAddress,
//                     decoration: InputDecoration(
//                         filled: true,
//                         fillColor: Colors.white,
//                         hintText: "Enter your title",
//                         hintStyle: TextStyle(
//                             color: Color(0xff9796A1),
//                             fontSize: 14,
//                             fontWeight: FontWeight.w300,
//                             fontFamily: GoogleFonts.outfit().fontFamily),
//                         contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
//                         enabledBorder:  OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(30),
//                             borderSide:
//                             BorderSide(color: Color(0xff9796A1))),
//                         focusedBorder: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(30),
//                             borderSide:
//                             BorderSide(color: Color(0xff9796A1))),
//                         border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(30),
//                             borderSide: BorderSide(color: Color(0xff9796A1)))
//                     ),
//                     onFieldSubmitted: (value) {},
//                     validator: (value) {
//                       if (value!.isEmpty) {
//                         return 'enter the title of review';
//                       }
//                       return null;
//                     },
//                   ),
//                   SizedBox(height: height * 0.02),
//                   Text(
//                     "Your Review",
//                     style: Theme.of(context)
//                         .textTheme
//                         .titleMedium
//                         ?.copyWith(fontWeight: FontWeight.w500),
//                   ),
//                   SizedBox(height: height * 0.005),
//                   TextFormField(
//                     maxLines:3,
//                     controller: review,
//                     keyboardType: TextInputType.emailAddress,
//                     decoration: InputDecoration(
//                         filled: true,
//                         fillColor: Colors.white,
//                         hintText: "Enter your review",
//                         hintStyle: TextStyle(
//                             color: Color(0xff9796A1),
//                             fontSize: 14,
//                             fontWeight: FontWeight.w300,
//                             fontFamily: GoogleFonts.outfit().fontFamily),
//                        // contentPadding: EdgeInsets.fromLTRB(20, 40, 20, 40),
//                         enabledBorder:  OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(30),
//                             borderSide:
//                             BorderSide(color: Color(0xff9796A1))),
//                         focusedBorder: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(30),
//                             borderSide:
//                             BorderSide(color: Color(0xff9796A1))),
//                         border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(30),
//                             borderSide: BorderSide(color: Color(0xff9796A1)))
//                     ),
//                     onFieldSubmitted: (value) {},
//                     validator: (value) {
//                       if (value!.isEmpty) {
//                         return 'enter the review';
//                       }
//                       return null;
//                     },
//                   ),
//                   SizedBox(height: height * 0.02),
//                   Text(
//                     "Your Name",
//                     style: Theme.of(context)
//                         .textTheme
//                         .titleMedium
//                         ?.copyWith(fontWeight: FontWeight.w500),
//                   ),
//                   SizedBox(height: height * 0.005),
//                   TextFormField(
//                     controller: name,
//                     keyboardType: TextInputType.emailAddress,
//                     decoration: InputDecoration(
//                         filled: true,
//                         fillColor: Colors.white,
//                         hintText: "Enter your name",
//                         hintStyle: TextStyle(
//                             color: Color(0xff9796A1),
//                             fontSize: 14,
//                             fontWeight: FontWeight.w300,
//                             fontFamily: GoogleFonts.outfit().fontFamily),
//                         contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
//                         enabledBorder:  OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(30),
//                             borderSide:
//                             BorderSide(color: Color(0xff9796A1))),
//                         focusedBorder: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(30),
//                             borderSide:
//                             BorderSide(color: Color(0xff9796A1))),
//                         border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(30),
//                             borderSide: BorderSide(color: Color(0xff9796A1)))
//                     ),
//                     onFieldSubmitted: (value) {},
//                     validator: (value) {
//                       if (value!.isEmpty) {
//                         return 'enter name';
//                       }
//                       return null;
//                     },
//                   ),
//                   SizedBox(height: height * 0.02),
//                   Text(
//                     "Your Email",
//                     style: Theme.of(context)
//                         .textTheme
//                         .titleMedium
//                         ?.copyWith(fontWeight: FontWeight.w500),
//                   ),
//                   SizedBox(height: height * 0.005),
//                   TextFormField(
//                     controller: email,
//                     keyboardType: TextInputType.emailAddress,
//                     decoration: InputDecoration(
//                         filled: true,
//                         fillColor: Colors.white,
//                         hintText: "Enter your email",
//                         hintStyle: TextStyle(
//                           fontWeight: FontWeight.w300,
//                           color: Color(0xff9796A1),
//                           fontSize: 14,
//                           fontFamily: GoogleFonts.outfit().fontFamily,
//                         ),
//                         contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
//                         enabledBorder:  OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(30),
//                             borderSide:
//                             BorderSide(color: Color(0xff9796A1))),
//                         focusedBorder: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(30),
//                             borderSide:
//                             BorderSide(color: Color(0xff9796A1))),
//                         border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(30),
//                             borderSide: BorderSide(color: Color(0xff9796A1)))
//                     ),
//                     onFieldSubmitted: (value) {},
//                     validator: (value) {
//                       if (value!.isEmpty ||
//                           !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
//                               .hasMatch(value)) {
//                         return 'enter the right email';
//                       }
//                       return null;
//                     },
//                   ),
//                   SizedBox(height: height * 0.02),
//                   Text(
//                     "This review is based on my own experience \n and is my genuine opinion.",
//                     style: Theme.of(context).textTheme.bodyLarge?.copyWith(
//                         fontWeight: FontWeight.w300, color: Color(0xff9796A1)),
//                   ),
//                   SizedBox(height: height * 0.04),
//                   Center(
//                     child: MyButton(
//                         title: "Submit Your Review",
//                         onTap: () {
//                           _submit();
//                         },
//                         height: 50,
//                         width: 200),
//                   ),
//                   SizedBox(height: height * 0.04),
//                   Center(
//                     child: Text(
//                       "Client Say's",
//                       style: Theme.of(context).textTheme.displayMedium?.copyWith(
//                           fontSize: 22,
//                           fontWeight: FontWeight.w600,
//                           color: Color(0xff323643)),
//                     ),
//                   ),
//                   SizedBox(height: height * 0.04),
//                   Center(
//                     child: Column(
//                       children: [
//                         Text(
//                           "Saturday Takeaway",
//                           style: Theme.of(context)
//                               .textTheme
//                               .titleMedium
//                               ?.copyWith(fontWeight: FontWeight.w500),
//                         ),
//                         SizedBox(height: height * 0.005),
//                         Text(
//                           "15 April 2023",
//                           style: Theme.of(context).textTheme.bodyLarge?.copyWith(
//                               fontWeight: FontWeight.w300,
//                               color: Color(0xff9796A1)),
//                         ),
//                         SizedBox(
//                           height: height * 0.03,
//                         ),
//                         Text(
//                           "Absolutely delicious king prawn supreme,rich,\nAubergine and spinach.\n"
//                           "\n Onion bargy all delivered in good time and high\n standard of presentation.",
//                           textAlign: TextAlign.center,
//                           style: Theme.of(context).textTheme.bodyLarge?.copyWith(
//                               fontWeight: FontWeight.w300,
//                               color: Color(0xff9796A1)),
//                         ),
//                         SizedBox(
//                           height: height * 0.02,
//                         ),
//                         Text(
//                           "Thank you so much",
//                           style: Theme.of(context)
//                               .textTheme
//                               .bodyLarge
//                               ?.copyWith(fontWeight: FontWeight.w300),
//                         ),
//                         SizedBox(
//                           height: height * 0.02,
//                         ),
//                         Text(
//                           "Lynsie Holt",
//                           style: Theme.of(context).textTheme.bodyLarge?.copyWith(
//                               fontWeight: FontWeight.w500,
//                               color: Color(0xff911FDA)),
//                         ),
//                         InkWell(
//                           onTap: () {},
//                           child: ClipRRect(
//                             borderRadius: BorderRadius.circular(20.0),
//                             child: Image.asset('assets/drawericon/fillstar.png',
//                                 width: width * 0.3, height: height * 0.04),
//                           ),
//                         ),
//                         Row(
//                           //crossAxisAlignment: CrossAxisAlignment.center,
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             InkWell(
//                               onTap: () {},
//                               child: Image.asset('assets/drawericon/left.png',
//                                   width: width * 0.3, height: height * 0.04),
//                             ),
//                             InkWell(
//                               onTap: () {},
//                               child: Image.asset('assets/drawericon/right.png',
//                                   width: width * 0.3, height: height * 0.04),
//                             ),
//                           ],
//                         ),
//                         SizedBox(height: height*0.03),
//                         Image.asset('assets/drawericon/map.png'),
//                         SizedBox(height: height*0.03),
//                         Text(
//                           "About Us",
//                           style: Theme.of(context)
//                               .textTheme
//                               .titleMedium
//                               ?.copyWith(fontWeight: FontWeight.w500),
//                         ),
//                         SizedBox(height: height*0.02),
//                         Text(
//                             " ''The 29029'' offers fine upmarket Nepalese and\n"
//                                 "Indian Cuisine set in comfortable, fresh and \n"
//                                 "modern interior with soft lighting and warm \n"
//                                 "ambiance. Dinners can enjoy a variety of dishes \n"
//                                 "from an extensive mouth-watering menu.",
//                           textAlign: TextAlign.center,
//                           style: Theme.of(context).
//                           textTheme.
//                           bodyLarge?.copyWith(color: Color(0xff9796A1),
//                               fontWeight: FontWeight.w300)),
//                         SizedBox(height: height*0.03),
//                         MyButton(title:"Order Online", onTap:(){},
//                             height: 50, width:200),
//                         SizedBox(height: height*0.03),
//                         SizedBox( height: 50,width: 200,
//                             child: ElevatedButton(
//                               style: ElevatedButton.styleFrom(backgroundColor: Color(0xff911FDA),
//                               shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))
//                               ),
//                                 onPressed: (){},
//
//                                 child:Text("Book A Table"))
//                         ),
//                         SizedBox(height: height*0.05),
//                         Text("Quick Link",
//                         style: Theme.of(context)
//                             .textTheme
//                             .titleMedium
//                             ?.copyWith(fontWeight: FontWeight.w500),
//                         ),
//                         ListTile(
//                           visualDensity: VisualDensity.compact,
//                           dense:true,
//                           minLeadingWidth:5,
//                           horizontalTitleGap:6,
//                           contentPadding: EdgeInsets.only(right: 80,left: 80),
//                           leading: Icon(Icons.arrow_forward_sharp,color: Color(0xff9796A1),),
//                           title:Text("About Company",
//                           style: Theme.of(context).
//                           textTheme.bodyLarge?.
//                           copyWith(color: Color(0xff9796A1))),
//                         ),
//                         ListTile(
//                           visualDensity: VisualDensity.compact,
//                           dense:true,
//                           minLeadingWidth:5,
//                           horizontalTitleGap:6,
//                           contentPadding: EdgeInsets.only(right: 80,left: 80),
//                           leading: Icon(Icons.arrow_forward_sharp,color: Color(0xff9796A1),),
//                           title:Text("Our Menu",
//                               style: Theme.of(context).
//                               textTheme.bodyLarge?.
//                               copyWith(color: Color(0xff9796A1))),
//                         ),
//                         ListTile(
//                           visualDensity: VisualDensity.compact,
//                           dense:true,
//                           minLeadingWidth:5,
//                           horizontalTitleGap:6,
//                           contentPadding: EdgeInsets.only(right: 80,left: 80),
//                           leading: Icon(Icons.arrow_forward_sharp,color: Color(0xff9796A1),),
//                           title:Text("Buffet",
//                               style: Theme.of(context).
//                               textTheme.bodyLarge?.
//                               copyWith(color: Color(0xff9796A1))),
//                         ),
//                         ListTile(
//                           visualDensity: VisualDensity.compact,
//                           dense:true,
//                           minLeadingWidth:5,
//                           horizontalTitleGap:6,
//                           contentPadding: EdgeInsets.only(right: 80,left: 80),
//                           leading: Icon(Icons.arrow_forward_sharp,color: Color(0xff9796A1),),
//                           title:Text("Catering",
//                               style: Theme.of(context).
//                               textTheme.bodyLarge?.
//                               copyWith(color: Color(0xff9796A1))),
//                         ),
//                         ListTile(
//                           visualDensity: VisualDensity.compact,
//                           dense:true,
//                           minLeadingWidth:5,
//                           horizontalTitleGap:6,
//                           contentPadding: EdgeInsets.only(right: 80,left: 80),
//                           leading: Icon(Icons.arrow_forward_sharp,color: Color(0xff9796A1),),
//                           title:Text("Submit Reviews",
//                               style: Theme.of(context).
//                               textTheme.bodyLarge?.
//                               copyWith(color: Color(0xff9796A1))),
//                         ),
//                         ListTile(
//                           visualDensity: VisualDensity.compact,
//                           dense:true,
//                           minLeadingWidth:5,
//                           horizontalTitleGap: 6,
//                           contentPadding: EdgeInsets.only(right: 80,left: 80),
//                           leading: Icon(Icons.arrow_forward_sharp,color: Color(0xff9796A1),),
//                           title:Text("Contact Us",
//                               style: Theme.of(context).
//                               textTheme.bodyLarge?.
//                               copyWith(color: Color(0xff9796A1))),
//                         ),
//                         ListTile(
//                           visualDensity: VisualDensity.compact,
//                           dense:true,
//                           minLeadingWidth:5,
//                           horizontalTitleGap:6,
//                           contentPadding: EdgeInsets.only(right: 80,left: 80),
//                           leading: Icon(Icons.arrow_forward_sharp,color: Color(0xff9796A1),),
//                           title:Text("Privacy Policy",
//                               style: Theme.of(context).
//                               textTheme.bodyLarge?.
//                               copyWith(color: Color(0xff9796A1))),
//                         ),
//                         ListTile(
//                           visualDensity: VisualDensity.compact,
//                           dense:true,
//                           minLeadingWidth:5,
//                           horizontalTitleGap:6,
//                           contentPadding: EdgeInsets.only(right: 80,left: 80),
//                           leading: Icon(Icons.arrow_forward_sharp,color: Color(0xff9796A1),),
//                           title:Text("Terms Of Use",
//                               style: Theme.of(context).
//                               textTheme.bodyLarge?.
//                               copyWith(color: Color(0xff9796A1))),
//                         ),
//                         ListTile(
//                           visualDensity: VisualDensity.compact,
//                           dense:true,
//                           minLeadingWidth:5,
//                           horizontalTitleGap:6,
//                           contentPadding: EdgeInsets.only(right: 80,left: 80),
//                           leading: Icon(Icons.arrow_forward_sharp,color: Color(0xff9796A1),),
//                           title:Text("Google Tour",
//                               style: Theme.of(context).
//                               textTheme.bodyLarge?.
//                               copyWith(color: Color(0xff9796A1))),
//                         ),
//                         SizedBox(height: height*0.03),
//                         Text("Contact & Reservation",
//                           style: Theme.of(context)
//                               .textTheme
//                               .titleMedium
//                               ?.copyWith(fontWeight: FontWeight.w500),
//                         ),
//                         SizedBox(height: height*0.03),
//                         RichText(
//                           text: TextSpan(
//                             children: [
//                               WidgetSpan(
//                                 child: Icon(Icons.location_on, size:15,color: Color(0xff911FDA),),
//                               ),
//                               TextSpan(
//                                 text:"Sandford RoadSandford, Wareham,Dorset",
//                                 style: Theme.of(context).
//                                 textTheme.
//                                 bodyLarge?.copyWith(fontWeight:FontWeight.w400,
//                                     color: Color(0xff9796A1)),
//                               ),
//                             ],
//                           ),
//                         ),
//                         SizedBox(height: height*0.01),
//                         Text("BH207DD",style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w400,
//                         color: Color(0xff9796A1)),),
//                         SizedBox(height: height*0.02),
//                         RichText(
//                           text: TextSpan(
//                             children: [
//                               WidgetSpan(
//                                 child: Icon(Icons.call, size:15,color: Color(0xff911FDA),),
//                               ),
//                               TextSpan(
//                                 text:"01929556959",
//                                 style: Theme.of(context).
//                                 textTheme.
//                                 bodyLarge?.copyWith(fontWeight:FontWeight.w400,
//                                     color: Color(0xff9796A1)),
//                               ),
//                             ],
//                           ),
//                         ),
//                         SizedBox(height: height*0.02),
//                         RichText(
//                           text: TextSpan(
//                             children: [
//                               WidgetSpan(
//                                 child: Icon(Icons.email, size:15,color: Color(0xff911FDA),),
//                               ),
//                               TextSpan(
//                                 text:"info@the29029restaurant.co.uk",
//                                 style: Theme.of(context).
//                                 textTheme.
//                                 bodyLarge?.copyWith(fontWeight:FontWeight.w400,
//                                     color: Color(0xff9796A1)),
//                               ),
//                             ],
//                           ),
//                         ),
//                         SizedBox(height: height*0.03),
//                         Text("Opening Hours:",
//                           style: Theme.of(context)
//                               .textTheme
//                               .titleMedium
//                               ?.copyWith(fontWeight: FontWeight.w500),
//                         ),
//                         SizedBox(height: height*0.02,),
//                         Text("Delicious Lunch:",
//                           style: Theme.of(context)
//                               .textTheme
//                               .titleMedium
//                               ?.copyWith(fontSize: 14,
//                               fontWeight: FontWeight.w500),
//                         ),
//                         SizedBox(height: height*0.01,),
//                         Text("12:00 - 02:30 Pm",
//                           style: Theme.of(context)
//                               .textTheme
//                               .titleMedium
//                               ?.copyWith(fontSize: 14,
//                               fontWeight: FontWeight.w300,
//                           color: Color(0xff9796A1)
//                          ),
//                         ),
//                         SizedBox(height: height*0.01,),
//                         Text("A La Carte Dinner",
//                           style: Theme.of(context)
//                               .textTheme
//                               .titleMedium
//                               ?.copyWith(fontSize: 14,
//                               fontWeight: FontWeight.w500),
//                         ),
//                         SizedBox(height: height*0.01,),
//                         Text("05:30 - 11:00 Pm",
//                           style: Theme.of(context)
//                               .textTheme
//                               .titleMedium
//                               ?.copyWith(fontSize: 14,
//                               fontWeight: FontWeight.w300,
//                               color: Color(0xff9796A1)
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                  SizedBox(height: height*0.3),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//
//       bottomSheet:  Container(
//         height: 150,width: 400,
//         color: Color(0xff41004C),
//         child: Column(
//           children: [
//             SizedBox(height: height*0.03),
//             Padding(
//               padding: const EdgeInsets.only(right: 45,left: 45),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Image.asset("assets/drawericon/appstore.png",height:30,width:30),
//                   Image.asset("assets/drawericon/playstore.png",height:30,width:30),
//                   Image.asset("assets/drawericon/tripadvisor.png",height:30,width:30)
//                 ],
//               ),
//             ),
//             SizedBox(height: height*0.01),
//             Padding(
//               padding: const EdgeInsets.only(right: 20,left: 20),
//               child: Row(
//                 mainAxisAlignment:MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text("Apple Store App\n Download",
//                     textAlign: TextAlign.center,
//                     style:
//                     Theme.of(context).
//                     textTheme.
//                     labelLarge?.copyWith(fontSize: 12,
//                         fontWeight: FontWeight.w300,
//                         color:Colors.white)
//                     ,),
//                   Text("Google Store App\nDownload",
//                       textAlign: TextAlign.center,
//                       style:
//                       Theme.of(context).
//                       textTheme.
//                       labelLarge?.copyWith(fontSize: 12,
//                           fontWeight: FontWeight.w300,
//                           color:Colors.white)
//                   ),
//                   Text("Trip Advisor App\n Download",
//                       textAlign: TextAlign.center,
//                       style:
//                       Theme.of(context).
//                       textTheme.
//                       labelLarge?.copyWith(fontSize: 12,
//                           fontWeight: FontWeight.w300,
//                           color:Colors.white)
//                   )
//                 ],
//               ),
//             ),
//             SizedBox(height: height*0.03),
//             Padding(
//               padding: const EdgeInsets.only(right: 10,left: 10),
//               child: Text("All Rights Reserved Ⓡ The ''29029 Wareham'' Restaurant\nPowered by BUSINESS APPS LONDON" ,
//                   textAlign: TextAlign.center,
//                   style:
//                   Theme.of(context).
//                   textTheme.
//                   labelLarge?.copyWith(fontSize: 12,
//                       fontWeight: FontWeight.w300,
//                       color:Colors.white)
//               ),
//             )
//           ],
//
//         ),
//
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the29029restaurant/widgets/my_button.dart';
import 'package:the29029restaurant/widgets/my_textform_field_widget.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:toggle_switch/toggle_switch.dart';

class ClientSays extends StatefulWidget {
  const ClientSays({super.key});

  @override
  State<ClientSays> createState() => _ClientSaysState();
}

class _ClientSaysState extends State<ClientSays> {
  List<Map<String, String>> data = [
    {"Name": "About Company", "url": ""},
    {"Name": "Our Menu", "url": ""},
    {"Name": "Buffet", "url": ""},
    {"Name": "Catering", "url": ""},
    {"Name": "Submit Reviews", "url": ""},
    {"Name": "Contact Us", "url": ""},
    {"Name": "Privacy police", "url": ""},
    {"Name": "Terms Use", "url": ""},
    {"Name": "Google Tour", "url": ""}
  ];
  TextEditingController reviewController = TextEditingController();
  TextEditingController titleController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  late double ratingValue;

  var _formKey = GlobalKey<FormState>();
  void _submit() {
    final isValid = _formKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    _formKey.currentState!.save();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Image.asset("assets/images/backbutton.png"),
          ),
          title: Text("Client Say's",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(fontSize: 18,color: Colors.black, fontWeight: FontWeight.w600)),
          centerTitle: true,
        ),
        body: ListView(children: [
          Form(
              key: _formKey,
              child: SingleChildScrollView(
                  child: Padding(
                padding: const EdgeInsets.only(right:20, left:20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: height * 0.02),
                    Image.asset('assets/drawericon/Group.png'),
                    SizedBox(height: height * 0.03),
                    Text('Your Overall Rating',
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w600)),
                    SizedBox(height: height * 0.002),
                    RatingBar(
                        initialRating: 0,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemSize: 24,
                        ratingWidget: RatingWidget(
                          full: const Icon(Icons.star, color: Colors.amber),
                          half: const Icon(
                            Icons.star_half,
                            color: Colors.amber,
                          ),
                          empty: const Icon(
                            Icons.star_outline,
                            color: Colors.amber,
                          ),
                        ),
                        onRatingUpdate: (value) {
                          setState(() {
                            ratingValue = value;
                          });
                        }),
                    SizedBox(height: height * 0.02),
                    Text("Title of the review",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w600)),
                    SizedBox(height: height * 0.01),
                    TextFormField(
                      //   controller: firstname,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xffFAFAFA),
                          hintText: "Enter your title",
                          hintStyle: TextStyle(
                              color: Color(0xff9796A1),
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              fontFamily: GoogleFonts.outfit().fontFamily),
                          contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide(color: Color(0xffDCDCDC))),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide(color: Color(0xffDCDCDC))),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide:
                                  BorderSide(color: Color(0xffDCDCDC)))),
                      onFieldSubmitted: (value) {},
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'enter the title review';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: height * 0.02),
                    Text("Your Reviews",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w600)),
                    SizedBox(height: height * 0.01),
                    TextFormField(
                      //   controller: firstname,
                      keyboardType: TextInputType.name,
                      maxLines: 4,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xffFAFAFA),
                          hintText: "Enter your reviews",
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
                    SizedBox(height: height * 0.02),
                    Text("Your Name",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w600)),
                    SizedBox(height: height * 0.01),
                    TextFormField(
                      //controller: firstname,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xffFAFAFA),
                          hintText: "Enter your name",
                          hintStyle: TextStyle(
                              color: Color(0xff9796A1),
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              fontFamily: GoogleFonts.outfit().fontFamily),
                          contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide(color: Color(0xffDCDCDC))),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide(color: Color(0xffDCDCDC))),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide:
                                  BorderSide(color: Color(0xffDCDCDC)))),
                      onFieldSubmitted: (value) {},
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'enter the name';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: height * 0.02),
                    Text("Your Email",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w600)),
                    SizedBox(height: height * 0.01),
                    TextFormField(
                      //  controller: email,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xffFAFAFA),
                          hintText: "Enter your email",
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.w300,
                            color: Color(0xff9796A1),
                            fontSize: 14,
                            fontFamily: GoogleFonts.outfit().fontFamily,
                          ),
                          contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide(color: Color(0xffDCDCDC))),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide(color: Color(0xffDCDCDC))),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide:
                                  BorderSide(color: Color(0xffDCDCDC)))),
                      onFieldSubmitted: (value) {},
                      validator: (value) {
                        if (value!.isEmpty ||
                            !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                .hasMatch(value)) {
                          return 'enter the vaild email';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: height * 0.02),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ToggleSwitch(
                          customWidths: [40,40],
                          cornerRadius: 25,
                          activeBgColors: [
                            [Colors.cyan],
                            [Colors.redAccent]
                          ],
                          activeFgColor: Colors.white,
                          inactiveBgColor: Colors.grey,
                          inactiveFgColor: Colors.white,
                          totalSwitches: 2,
                          labels: ['Yes', 'No'],
                          onToggle: (index) {
                            print('switched to: $index');
                          },
                        ),
                        SizedBox(height: width * 0.01),
                        Text(
                            'The review is based on my own exprience\n'
                                'and is my genuine opinion.',
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xff9796A1),
                                    fontFamily: GoogleFonts.outfit().fontFamily)
                            ),
                      ],
                    ),
                    SizedBox(height: height * 0.05),
                    Center(
                      child: MyButton(
                        bgColor: Color(0xff41004C),
                        title: 'Submit Your Review',
                        onTap: () {
                          _submit();
                        },
                        height: 50,
                        width: 200,
                      ),
                    ),
                  ],
                ),
                  )
              )
          ),
                    SizedBox(height: height * 0.05),
                    Center(
                      child: Text(
                        "Client Say's",
                        style: Theme.of(context)
                            .textTheme
                            .displayMedium
                            ?.copyWith(
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff323643)),
                      ),
                    ),
                    SizedBox(height: height * 0.03),
                    Center(
                      child: Column(
                        children: [
                          Text(
                            "Saturday Takeaway",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(fontWeight: FontWeight.w500),
                          ),
                          SizedBox(height: height * 0.005),
                          Text(
                            "15 April 2023",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xff9796A1)),
                          ),
                          SizedBox(
                            height: height * 0.03,
                          ),
                          Text(
                            "Absolutely delicious king prawn supreme,rich,\nAubergine and spinach.\n"
                            "\n Onion bargy all delivered in good time and high\n standard of presentation.",
                            textAlign: TextAlign.center,
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xff9796A1)),
                          ),
                          SizedBox(
                            height: height * 0.02,
                          ),
                          Text(
                            "Thank you so much",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(fontWeight: FontWeight.w300),
                          ),
                          SizedBox(
                            height: height * 0.02,
                          ),
                          Text(
                            "Lynsie Holt",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff911FDA)),
                          ),
                          SizedBox(
                            height:height*0.01),
                          RatingBar(
                              initialRating: 0,
                               direction: Axis.horizontal,
                               allowHalfRating: true,
                               itemCount: 5,
                               itemSize: 12,
                               ratingWidget: RatingWidget(
                                 full: const Icon(
                                   Icons.star,
                                   color: Colors.amber,
                                 ),
                                 half: const Icon(
                                   Icons.star_half,
                                   color: Colors.amber,
                                 ),
                                 empty: const Icon(
                                   Icons.star_outline,
                                   color: Colors.amber,
                                 ),
                               ),
                               onRatingUpdate: (value) {
                                 setState(() {
                                   ratingValue = value;
                                 });
                               }),
                          SizedBox(
                            height: height*0.01,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                               GestureDetector(
                                 onTap: (){

                                 },
                                 child: CircleAvatar(
                                   maxRadius:15 ,
                                   minRadius: 15,
                                   backgroundColor:Color(0xff911FDA),
                                   child: Icon(
                                      Icons.keyboard_arrow_left_outlined,
                                      color:Colors.white,
                                    ),
                                 ),
                               ),
                              SizedBox(width: width*0.03),
                              GestureDetector(
                                onTap: (){

                                },
                                child: CircleAvatar(
                                  maxRadius:15,
                                  minRadius:15,
                                  backgroundColor:Color(0xff911FDA),
                                  child: Icon(
                                      Icons.keyboard_arrow_right_rounded,
                                      color:Colors.white,
                                    ),
                                ),
                              ),


                            ],
                          ),
                          SizedBox(height:height*0.001),
                          Image.asset(
                            'assets/drawericon/map.png',
                          ),
                          SizedBox(height:height*0.03),
                          SizedBox(height: height*0.03),
                        Text(
                          "About Us",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(fontWeight: FontWeight.w600,fontSize:16,color: Colors.black,
                          fontFamily: GoogleFonts.outfit().fontFamily
                          ),
                        ),
                        SizedBox(height: height*0.02),
                        Text(
                            " ''The 29029'' offers fine upmarket Nepalese and\n"
                                "Indian Cuisine set in comfortable, fresh and \n"
                                "modern interior with soft lighting and warm \n"
                                "ambiance. Dinners can enjoy a variety of dishes \n"
                                "from an extensive mouth-watering menu.",
                          textAlign: TextAlign.center,
                          style: Theme.of(context).
                          textTheme.
                          bodyLarge?.copyWith(color: Color(0xff9796A1),
                              fontWeight: FontWeight.w300)),
                        SizedBox(height: height*0.03),
                          Center(
                            child: MyButton(
                              bgColor:Color(0xff41004C) ,
                              title: 'Oder Online',
                              onTap: () {},
                              height: 50,
                              width: 200,
                            ),
                          ),
                          SizedBox(
                            height: height*0.03),
                          Center(
                            child: MyButton(
                              title: "Book A Table",
                              onTap: () {},
                              height: 50,
                              width: 200,
                              bgColor: Color(0xff911FDA),
                              side: BorderSide(color:Color(0xff911FDA) ),
                            ),
                          ),
                          SizedBox(height:height*0.05),
                      Text("Quick Link",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(fontWeight: FontWeight.w600,fontSize:16,color: Colors.black,
                        fontFamily: GoogleFonts.outfit().fontFamily
                        ),
                        ),
                        // SizedBox(height: height,)
                          ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: data.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset("assets/drawericon/righterror.png",height:10,width: 10,),
                                      Text(
                                        data[index]["Name"] ?? "",
                                        style:
                                          Theme.of(context).textTheme.bodyLarge?.copyWith(color:Color(0xff9796A1),
                                          fontSize: 14,fontWeight: FontWeight.w400,
                                            fontFamily: GoogleFonts.outfit().fontFamily)
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                          SizedBox(height:height*0.03),
                          Center(
                            child:Text("Contact & Reservation",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(fontWeight: FontWeight.w600),
                        ),
                          ),
                         SizedBox(height:height*0.04),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.location_on_sharp,
                                  color: Color(0xff911FDA),
                                ),
                              ),
                              Text(
                                'Sandford RoadSandford,Wareham,Dorset\nBH20 7DD',
                                textAlign: TextAlign.center,
                                style:
                                Theme.of(context).
                                textTheme.
                                bodyLarge?.copyWith(fontWeight:FontWeight.w400,
                                    color: Color(0xff9796A1)),
                              ),
                            ],
                          ),
                          SizedBox(height:height*0.01),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.phone_rounded,
                                  color: Color(0xff911FDA),
                                ),
                              ),
                              Text(
                                '01929556959',
                                style:
                                Theme.of(context).
                                textTheme.
                                bodyLarge?.copyWith(fontWeight:FontWeight.w400,
                                    color: Color(0xff9796A1)),
                              ),
                            ],
                          ),
                          SizedBox(height:height*0.01),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.mail_outlined,
                                  color: Color(0xff911FDA),
                                ),
                              ),
                              Text(
                                'info@29029restaurant.co.uk',
                                style:
                                Theme.of(context).
                                textTheme.
                                bodyLarge?.copyWith(fontWeight:FontWeight.w400,
                                    color: Color(0xff9796A1)),
                              ),
                            ],
                          ),
                          SizedBox(height:height*0.01),
                          Center(
                            child: Text(
                              'Opening House:',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium
                                  ?.copyWith(
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontFamily:
                                          GoogleFonts.outfit().fontFamily),
                            ),
                          ),
                          SizedBox(height:height*0.03),
                          Center(
                            child: Text(
                              'Delicious Lunch',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium
                                  ?.copyWith(
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontFamily:
                                          GoogleFonts.outfit().fontFamily),
                            ),
                          ),
                          SizedBox(height:height*0.01),
                          Center(
                            child: Text('12:00 - 02:30 Pm',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.copyWith(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300,
                                        color: Color(0xff9796A1),
                                        fontFamily:
                                            GoogleFonts.outfit().fontFamily)),
                          ),
                          SizedBox(height:height*0.02),
                          Center(
                            child: Text(
                              'A La CarteDinner',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium
                                  ?.copyWith(
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontFamily:
                                          GoogleFonts.outfit().fontFamily),
                            ),
                          ),
                          SizedBox(height:height*0.01),
                          Center(
                            child: Text('05:30 - 11:00 Pm',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.copyWith(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300,
                                        color: Color(0xff9796A1),
                                        fontFamily:
                                            GoogleFonts.outfit().fontFamily)),
                          ),
                          SizedBox(height: height * 0.06),
                        ],
                      ),
                    ),

                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xff41004c),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: height * 0.03),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  Image.asset("assets/drawericon/appstore.png",
                                      height: 30, width: 30),
                                  SizedBox(height: height * 0.02),
                                  Text('Apple App Store\nDownload',
                                      textAlign: TextAlign.center,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall
                                          ?.copyWith(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w300,
                                              color: Colors.white,
                                              fontFamily: GoogleFonts.outfit()
                                                  .fontFamily)),
                                ],
                              ),
                              Column(
                                children: [
                                  Image.asset("assets/drawericon/playstore.png",
                                      height: 30, width: 30),
                                  SizedBox(height: height * 0.02),
                                  Text('Google App Store\nDownload',
                                      textAlign: TextAlign.center,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall
                                          ?.copyWith(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w300,
                                              color: Colors.white,
                                              fontFamily: GoogleFonts.outfit()
                                                  .fontFamily))
                                ],
                              ),
                              Column(
                                children: [
                                  Image.asset(
                                      "assets/drawericon/tripadvisor.png",
                                      height: 30,
                                      width: 30),
                                  SizedBox(height: height * 0.02),
                                  Text("Trip Advisor App\nDownload",
                                      textAlign: TextAlign.center,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall
                                          ?.copyWith(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w300,
                                              color: Colors.white,
                                              fontFamily: GoogleFonts.outfit()
                                                  .fontFamily)),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: height * 0.03),
                          Text(
                            "All Rights Reserved Ⓡ The ''29029 Wareham'' Restaurant\nPowered by BUSINESS APPS LONDON",
                            textAlign: TextAlign.center,
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.white),
                          ),
                          SizedBox(height: height * 0.03),
                        ],
                      ),
                    ),

        ]));
  }
}



