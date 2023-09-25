// import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:get/get.dart';
//
// class AddressUpdateProfileController {
//   TextEditingController house_Controller = TextEditingController();
//   TextEditingController street_Controller = TextEditingController();
//   TextEditingController area_Controller = TextEditingController();
//   TextEditingController country_Controller = TextEditingController();
//   TextEditingController state_Controller = TextEditingController();
//   TextEditingController postcode_Controller = TextEditingController();
//   TextEditingController city_Controller = TextEditingController();
// }
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: sss(),
//     );
//   }
// }
//
// class sss extends StatefulWidget {
//   const sss({super.key});
//
//   @override
//   State<sss> createState() => _sssState();
// }
//
// class _sssState extends State<sss> {
//   final AddressUpdateProfileController addressUpdateProfileController =
//   AddressUpdateProfileController();
//   String? county;
//   var item = [
//     'INDIA',
//     'USA',
//     'CHINA',
//     'NEPAL',
//     'RUSSIA',
//   ];
//
//   // List to store the entered data
//   List<String> enteredData = [];
//   bool shouldDisplayData = false;
//
//   @override
//   void initState() {
//     super.initState();
//     enteredData = [];
//     _showBottomSheetAddress(context);
//   }
//   @override
//   Widget build(BuildContext context ) {
//     return
//       Center(
//         child: Column(
//           children: [
//             ElevatedButton(
//               onPressed: () {
//                 _showBottomSheetAddress(context);
//               },
//               child: Text('Show Address Form'),
//             ),
//             SizedBox(height: 20),
//
//             if (shouldDisplayData)
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children:
//                 enteredData
//                     .map(
//                       (item) => Padding(
//                     padding: EdgeInsets.symmetric(vertical: 4.0),
//                     child: Text(
//                         item
//                             ??
//                             'No address yet',
//                         // "D NO.27-33-1, Kamaraju Centre, Gudavallivari Street, Governerpet, Vijayawada-520002",
//                         style: Theme.of(context)
//                             .textTheme
//                             .titleSmall
//                             ?.copyWith(
//                           fontWeight: FontWeight.w500,
//                           color: Color(0xff9796A1),
//                           fontFamily: GoogleFonts.outfit().fontFamily,
//                         )),
//                   ),
//                 )
//                     .toList(),
//               ),
//
//           ],
//         ),
//       );
//
//   }
//
//   void _submit() {
//     final isValid = _formKey.currentState!.validate();
//     if (!isValid) {
//       return;
//     }
//     _formKey.currentState!.save();
//     // Clear previous data
//     enteredData.clear();
//
//     // Add the entered data to the list
//     enteredData.add("House/Building No: " +
//         addressUpdateProfileController.house_Controller.text);
//     enteredData.add(
//         "Street Name: " + addressUpdateProfileController.street_Controller.text);
//     enteredData.add("Area: " + addressUpdateProfileController.area_Controller.text);
//     enteredData.add("County: " + (county ?? ""));
//     enteredData.add(
//         "Post Code: " + addressUpdateProfileController.postcode_Controller.text);
//     enteredData.add("State: " + addressUpdateProfileController.state_Controller.text);
//     enteredData.add("City: " + addressUpdateProfileController.city_Controller.text);
//
//     print(enteredData);
//     setState(() {
//       shouldDisplayData= true;
//     });
//   }
//
//   void _showBottomSheetAddress(BuildContext context) {
//     showModalBottomSheet(
//       showDragHandle: true,
//       enableDrag: true,
//       shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.only(
//               topRight: Radius.circular(20), topLeft: Radius.circular(20))),
//       context: context,
//       isScrollControlled: true, // To make the sheet full-screen
//       builder: (context) {
//         return Container(
//           height: Get.height * 0.65,
//           decoration: BoxDecoration(
//               borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(20),
//                   bottomRight: Radius.circular(20))),
//           padding: EdgeInsets.only(
//               right: 20,
//               left: 20,
//               bottom: MediaQuery.of(context).viewInsets.bottom),
//           child: Form(
//             key: _formKey,
//             child: SingleChildScrollView(
//               child: SafeArea(
//                 child: Padding(
//                   padding: const EdgeInsets.only(right: 20, left: 20),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       SizedBox(height: Get.height * 0.03),
//                       Text(
//                         "House/Building No",
//                         style: Theme.of(context)
//                             .textTheme
//                             .titleMedium
//                             ?.copyWith(
//                             fontSize: 16,
//                             fontWeight: FontWeight.w600,
//                             fontFamily: GoogleFonts.outfit().fontFamily),
//                       ),
//                       SizedBox(height: Get.height * 0.005),
//                       TextFormField(
//                         controller: addressUpdateProfileController.house_Controller,
//                         keyboardType: TextInputType.text,
//                         decoration: InputDecoration(
//                             filled: true,
//                             fillColor: Colors.white,
//                             hintText: "House/Building No",
//                             hintStyle: TextStyle(
//                                 color: Color(0xff9796A1),
//                                 fontSize: 14,
//                                 fontWeight: FontWeight.w300,
//                                 fontFamily: GoogleFonts.outfit().fontFamily),
//                             contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
//                             enabledBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(30),
//                                 borderSide: BorderSide(color: Color(0xff9796A1))),
//                             focusedBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(30),
//                                 borderSide: BorderSide(color: Color(0xff9796A1))),
//                             border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(30),
//                                 borderSide: BorderSide(color: Color(0xff9796A1)))),
//                         onFieldSubmitted: (value) {},
//                         validator: (value) {
//                           if (value!.isEmpty) {
//                             return 'enter the House/Building No ';
//                           }
//                           return null;
//                         },
//                       ),
//                       SizedBox(height: Get.height * 0.02),
//                       Text(
//                         "Street Name",
//                         style: Theme.of(context)
//                             .textTheme
//                             .titleMedium
//                             ?.copyWith(
//                             fontSize: 16,
//                             fontWeight: FontWeight.w600,
//                             fontFamily: GoogleFonts.outfit().fontFamily),
//                       ),
//                       SizedBox(height: Get.height * 0.005),
//                       TextFormField(
//                         controller: addressUpdateProfileController.street_Controller,
//                         keyboardType: TextInputType.text,
//                         decoration: InputDecoration(
//                             filled: true,
//                             fillColor: Colors.white,
//                             hintText: "Enter street name",
//                             hintStyle: TextStyle(
//                                 color: Color(0xff9796A1),
//                                 fontSize: 14,
//                                 fontWeight: FontWeight.w300,
//                                 fontFamily: GoogleFonts.outfit().fontFamily),
//                             contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
//                             enabledBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(30),
//                                 borderSide: BorderSide(color: Color(0xff9796A1))),
//                             focusedBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(30),
//                                 borderSide: BorderSide(color: Color(0xff9796A1))),
//                             border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(30),
//                                 borderSide: BorderSide(color: Color(0xff9796A1)))),
//                         onFieldSubmitted: (value) {},
//                         validator: (value) {
//                           if (value!.isEmpty) {
//                             return 'enter the street name';
//                           }
//                           return null;
//                         },
//                       ),
//                       SizedBox(height: Get.height * 0.02),
//                       Text(
//                         "Area ",
//                         style: Theme.of(context)
//                             .textTheme
//                             .titleMedium
//                             ?.copyWith(
//                             fontSize: 16,
//                             fontWeight: FontWeight.w600,
//                             fontFamily: GoogleFonts.outfit().fontFamily),
//                       ),
//                       SizedBox(height: Get.height * 0.005),
//                       TextFormField(
//                         controller: addressUpdateProfileController.area_Controller,
//                         keyboardType: TextInputType.text,
//                         decoration: InputDecoration(
//                             filled: true,
//                             fillColor: Colors.white,
//                             hintText: "Enter area",
//                             hintStyle: TextStyle(
//                                 color: Color(0xff9796A1),
//                                 fontSize: 14,
//                                 fontWeight: FontWeight.w300,
//                                 fontFamily: GoogleFonts.outfit().fontFamily),
//                             contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
//                             enabledBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(30),
//                                 borderSide: BorderSide(color: Color(0xff9796A1))),
//                             focusedBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(30),
//                                 borderSide: BorderSide(color: Color(0xff9796A1))),
//                             border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(30),
//                                 borderSide: BorderSide(color: Color(0xff9796A1)))),
//                         onFieldSubmitted: (value) {},
//                         validator: (value) {
//                           if (value!.isEmpty) {
//                             return 'enter the area';
//                           }
//                           return null;
//                         },
//                       ),
//                       SizedBox(height: Get.height * 0.02),
//                       Text(
//                         "County",
//                         style: Theme.of(context)
//                             .textTheme
//                             .titleMedium
//                             ?.copyWith(
//                             fontSize: 16,
//                             fontWeight: FontWeight.w600,
//                             fontFamily: GoogleFonts.outfit().fontFamily),
//                       ),
//                       SizedBox(height: Get.height * 0.005),
//                       DropdownButtonFormField(
//                           value: county,
//                           icon: const Icon(Icons.keyboard_arrow_down,
//                               color: Color(0xff41004C)),
//                           items: item.map((String items) {
//                             return DropdownMenuItem(
//                               value: items,
//                               child: Text(items),
//                             );
//                           }).toList(),
//                           onChanged: (String? newValue) {
//                             county = newValue!;
//                             addressUpdateProfileController.country_Controller.text =
//                                 newValue;
//                           },
//                           validator: (value) {
//                             if (value == null) {
//                               return 'select county';
//                             }
//                             return null;
//                           },
//                           decoration: InputDecoration(
//                             contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
//                             enabledBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(30),
//                                 borderSide: BorderSide(color: Color(0xff9796A1))),
//                             focusedBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(30),
//                                 borderSide: BorderSide(color: Color(0xff9796A1))),
//                             border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(30),
//                                 borderSide: BorderSide(color: Color(0xff9796A1))),
//                             filled: true,
//                             fillColor: Colors.white,
//                           )),
//                       SizedBox(height: Get.height * 0.02),
//                       Text(
//                         "Post Code",
//                         style: Theme.of(context)
//                             .textTheme
//                             .titleMedium
//                             ?.copyWith(
//                             fontSize: 16,
//                             fontWeight: FontWeight.w600,
//                             fontFamily: GoogleFonts.outfit().fontFamily),
//                       ),
//                       SizedBox(height: Get.height * 0.005),
//                       TextFormField(
//                         controller: addressUpdateProfileController.postcode_Controller,
//                         keyboardType: TextInputType.text,
//                         decoration: InputDecoration(
//                             filled: true,
//                             fillColor: Colors.white,
//                             hintText: "Enter post code",
//                             hintStyle: TextStyle(
//                                 color: Color(0xff9796A1),
//                                 fontSize: 14,
//                                 fontWeight: FontWeight.w300,
//                                 fontFamily: GoogleFonts.outfit().fontFamily),
//                             contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
//                             enabledBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(30),
//                                 borderSide: BorderSide(color: Color(0xff9796A1))),
//                             focusedBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(30),
//                                 borderSide: BorderSide(color: Color(0xff9796A1))),
//                             border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(30),
//                                 borderSide: BorderSide(color: Color(0xff9796A1)))),
//                         onFieldSubmitted: (value) {},
//                         validator: (value) {
//                           if (value!.isEmpty) {
//                             return 'enter the post code';
//                           }
//                           return null;
//                         },
//                       ),
//                       SizedBox(height: Get.height * 0.02),
//                       SizedBox(height: Get.height * 0.02),
//                       Text(
//                         "State",
//                         style: Theme.of(context)
//                             .textTheme
//                             .titleMedium
//                             ?.copyWith(
//                             fontSize: 16,
//                             fontWeight: FontWeight.w600,
//                             fontFamily: GoogleFonts.outfit().fontFamily),
//                       ),
//                       SizedBox(height: Get.height * 0.005),
//                       TextFormField(
//                         controller: addressUpdateProfileController.state_Controller,
//                         keyboardType: TextInputType.text,
//                         decoration: InputDecoration(
//                             filled: true,
//                             fillColor: Colors.white,
//                             hintText: "Enter state",
//                             hintStyle: TextStyle(
//                                 color: Color(0xff9796A1),
//                                 fontSize: 14,
//                                 fontWeight: FontWeight.w300,
//                                 fontFamily: GoogleFonts.outfit().fontFamily),
//                             contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
//                             enabledBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(30),
//                                 borderSide: BorderSide(color: Color(0xff9796A1))),
//                             focusedBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(30),
//                                 borderSide: BorderSide(color: Color(0xff9796A1))),
//                             border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(30),
//                                 borderSide: BorderSide(color: Color(0xff9796A1)))),
//                         onFieldSubmitted: (value) {},
//                         validator: (value) {
//                           if (value!.isEmpty) {
//                             return 'enter the state';
//                           }
//                           return null;
//                         },
//                       ),
//                       SizedBox(height: Get.height * 0.02),
//                       Text(
//                         "city",
//                         style: Theme.of(context)
//                             .textTheme
//                             .titleMedium
//                             ?.copyWith(
//                             fontSize: 16,
//                             fontWeight: FontWeight.w600,
//                             fontFamily: GoogleFonts.outfit().fontFamily),
//                       ),
//                       SizedBox(height: Get.height * 0.005),
//                       TextFormField(
//                         controller: addressUpdateProfileController.city_Controller,
//                         keyboardType: TextInputType.text,
//                         decoration: InputDecoration(
//                             filled: true,
//                             fillColor: Colors.white,
//                             hintText: "Enter city",
//                             hintStyle: TextStyle(
//                                 color: Color(0xff9796A1),
//                                 fontSize: 14,
//                                 fontWeight: FontWeight.w300,
//                                 fontFamily: GoogleFonts.outfit().fontFamily),
//                             contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
//                             enabledBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(30),
//                                 borderSide: BorderSide(color: Color(0xff9796A1))),
//                             focusedBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(30),
//                                 borderSide: BorderSide(color: Color(0xff9796A1))),
//                             border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(30),
//                                 borderSide: BorderSide(color: Color(0xff9796A1)))),
//                         onFieldSubmitted: (value) {},
//                         validator: (value) {
//                           if (value!.isEmpty) {
//                             return 'enter the city';
//                           }
//                           return null;
//                         },
//                       ),
//                       SizedBox(height: Get.height * 0.06),
//                       Center(
//                         child: ElevatedButton(
//                           style: ElevatedButton.styleFrom(
//                             primary: Color(0xff41004C),
//                             minimumSize: Size(Get.width * 0.5, Get.height * .07),
//                           ),
//                           onPressed: () {
//                             _submit();
//                             // Show the data
//
//                           },
//                           child: InkWell(
//                             onTap: (){
//                               Navigator.pop(context);
//                             },
//                             child: Text(
//                               "Submit",
//                               style: Theme.of(context)
//                                   .textTheme
//                                   .titleMedium
//                                   ?.copyWith(
//                                   fontSize: 15,
//                                   fontWeight: FontWeight.w600,
//                                   color: Colors.white,
//                                   fontFamily: GoogleFonts.outfit().fontFamily),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         );
//       },
//
//     );
//
//   }
//
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//
// }
