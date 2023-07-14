import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the29029restaurant/view/bottombarscreen/onlineorder/locationdelivery.dart';
import 'package:the29029restaurant/view/bottomnavigationbar/bottomnavigation.dart';
import 'package:the29029restaurant/view/location/location.dart';
import 'package:the29029restaurant/widgets/my_button.dart';
import 'package:get/get.dart';
class AddANewAddress extends StatefulWidget {
  const AddANewAddress({super.key});

  @override
  State<AddANewAddress> createState() => _AddANewAddressState();
}

class _AddANewAddressState extends State<AddANewAddress> {
  var _formKey = GlobalKey<FormState>();


  void _submit() {
    final isValid = _formKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    _formKey.currentState!.save();
  }

   String ? dropdownvalue ;
  var items = [
     'Enter Street',
    'Your Activity 2',
    'Your Activity 3',
    'Your Activity 4',
    'Your Activity 5',
  ];

  String ? county ;
  var item = [
    'Enter county',
    'Your Activity 2',
    'Your Activity 3',
    'Your Activity 4',
    'Your Activity 5',
  ];


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
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>LUi(),
                ));
          },
          child: Image.asset("assets/images/backbutton.png"),
        ),
        title: Text("Add New Address",
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(fontSize: 18, fontWeight: FontWeight.w600)),
        centerTitle: true,
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(right: 20,left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: height*0.03),
                  Text("House/Building No",
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontSize: 16,fontWeight: FontWeight.w600,
                      fontFamily: GoogleFonts.outfit().fontFamily
                  ),),
                  SizedBox(height:height*0.005),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "House/Building No",
                        hintStyle: TextStyle(
                            color: Color(0xff9796A1),
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            fontFamily: GoogleFonts.outfit().fontFamily),
                        contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                        enabledBorder:  OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide:
                            BorderSide(color: Color(0xff9796A1))),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide:
                            BorderSide(color: Color(0xff9796A1))),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(color: Color(0xff9796A1)))
                    ),
                    onFieldSubmitted: (value) {},
                    validator: (value) {
                      if (value!.isEmpty ) {
                        return 'enter the House/Building No ';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: height*0.02),
                  Text("Street Name",style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontSize: 16,fontWeight: FontWeight.w600,
                      fontFamily: GoogleFonts.outfit().fontFamily
                  ),),
                  SizedBox(height:height*0.005),
              DropdownButtonFormField(value: dropdownvalue,
                icon: const Icon(Icons.keyboard_arrow_down,color: Color(0xff41004C)),
                items: items.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownvalue = newValue!;
                  });
                },
                  validator: (value) {
                    if (value == null) {
                      return 'select the street name';
                    }
                    return null;
                  },
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(20,10,20,10),
                  enabledBorder:  OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Color(0xff9796A1))),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide:
                      BorderSide(color: Color(0xff9796A1))),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Color(0xff9796A1))),
                  filled: true,
                  fillColor: Colors.white,
                )
              ),
                  SizedBox(height: height*0.02),
                  Text("Area ",style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontSize: 16,fontWeight: FontWeight.w600,
                      fontFamily: GoogleFonts.outfit().fontFamily
                  ),),
                  SizedBox(height:height*0.005),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Enter area",
                        hintStyle: TextStyle(
                            color: Color(0xff9796A1),
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            fontFamily: GoogleFonts.outfit().fontFamily),
                        contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                        enabledBorder:  OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide:
                            BorderSide(color: Color(0xff9796A1))),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide:
                            BorderSide(color: Color(0xff9796A1))),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(color: Color(0xff9796A1)))
                    ),
                    onFieldSubmitted: (value) {},
                    validator: (value) {
                      if (value!.isEmpty ) {
                        return 'enter the area';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: height*0.02),
                  Text("County",style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontSize: 16,fontWeight: FontWeight.w600,
                      fontFamily: GoogleFonts.outfit().fontFamily
                  ),),
                  SizedBox(height:height*0.005),
                  DropdownButtonFormField(value: county,
                      icon: const Icon(Icons.keyboard_arrow_down,color: Color(0xff41004C)),
                      items: item.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          county = newValue!;
                        });
                      },
                      validator: (value) {
                        if (value == null) {
                          return 'select county';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(20,10,20,10),
                        enabledBorder:  OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide:
                            BorderSide(color: Color(0xff9796A1))),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide:
                            BorderSide(color: Color(0xff9796A1))),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(color: Color(0xff9796A1))),
                        filled: true,
                        fillColor: Colors.white,
                      )
                  ),
                  SizedBox(height: height*0.02),
                  Text("Post Code",style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontSize: 16,fontWeight: FontWeight.w600,
                      fontFamily: GoogleFonts.outfit().fontFamily
                  ),),
                  SizedBox(height:height*0.005),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Enter post code",
                        hintStyle: TextStyle(
                            color: Color(0xff9796A1),
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            fontFamily: GoogleFonts.outfit().fontFamily),
                        contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                        enabledBorder:  OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide:
                            BorderSide(color: Color(0xff9796A1))),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide:
                            BorderSide(color: Color(0xff9796A1))),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(color: Color(0xff9796A1)))
                    ),
                    onFieldSubmitted: (value) {},
                    validator: (value) {
                      if (value!.isEmpty ) {
                        return 'enter the post code';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: height*0.02),
                  Text("Mobile Number",style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontSize: 16,fontWeight: FontWeight.w600,
                      fontFamily: GoogleFonts.outfit().fontFamily
                  ),),
                  SizedBox(height:height*0.005),
                  TextFormField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Enter mobile number",
                        hintStyle: TextStyle(
                            color: Color(0xff9796A1),
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            fontFamily: GoogleFonts.outfit().fontFamily),
                        contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                        enabledBorder:  OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide:
                            BorderSide(color: Color(0xff9796A1))),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide:
                            BorderSide(color: Color(0xff9796A1))),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(color: Color(0xff9796A1)))
                    ),
                    onFieldSubmitted: (value) {},
                    validator: (value) {
                      if (value!.isEmpty ) {
                        return 'enter mobile number';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: height*0.06),
                  Center(
                    child: MyButton(
                        bgColor: Color(0xff41004C),
                        title:"Submit",
                        onTap:(){
                          if (_formKey.currentState!.validate()) {
                            _formKey.currentState!.save();
                            _submit();
                            Get.back();
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //       builder: (context) =>BottomNavigation(),
                            //     ));
                          }
                        },
                        height:50,
                        width: 200),
                  ),
                  //SizedBox(height: height*0.01)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
