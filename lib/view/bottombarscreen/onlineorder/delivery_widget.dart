import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the29029restaurant/view/bottombarscreen/onlineorder/addnewaddress.dart';
import 'package:the29029restaurant/widgets/my_button.dart';

class DeliveryWidget extends StatefulWidget {
  const DeliveryWidget({super.key});

  @override
  State<DeliveryWidget> createState() => _DeliveryWidgetState();
}

class _DeliveryWidgetState extends State<DeliveryWidget> {

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final Width = MediaQuery.of(context).size.width;
    return Padding(
        padding: EdgeInsets.only(right:0,left:0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text("Delivery Adress",
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: Color(0xff323643),
                  fontWeight: FontWeight.w600,
                  fontSize: 18),
            ),
            SizedBox(height: height * 0.03),
            Container(
              height: height*0.23,
              width: Width,
              decoration: BoxDecoration(
                color:Color(0xffF5F5F5),
                borderRadius: BorderRadius.circular(15)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    leading: Text("Farion Wick",
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          color: Color(0xff323643),
                          fontWeight: FontWeight.w700,
                          fontSize: 18),
                    ),
                    trailing:GestureDetector(onTap: (){},
                      child:Image.asset("assets/images/edit.png"),)

                  ),
                  ListTile(
                    horizontalTitleGap: 0,
                    leading: Icon(
                      Icons.location_on,
                      color: Color(0xff911FDA),
                    ),

                    title: Text("D No.27-33-1,Kamaraju Centre,Gudavallivari Street,Governerpet,Vijayawada-520002",
                      textAlign: TextAlign.start,
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          color: Color(0xff777777),
                          fontWeight: FontWeight.w700,
                          fontSize: 14),
                    ),
                  ),
                  ListTile( horizontalTitleGap: 0,
                    leading: Icon(Icons.call, color: Color(0xff911FDA)),
                    title: Text("+919876543210",style: Theme.of(context)
                        .textTheme.titleLarge?.copyWith(color: Color(0xff777777),
                        fontWeight: FontWeight.w700, fontSize: 14)) ,
                  )

                ],
              ),
            ),
            SizedBox(height: height * 0.05),
            Center(
              child: MyButton(
                  bgColor: Color(0xff41004C),
                  title: "Add New Address",
                  txtStyle: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontFamily: GoogleFonts.outfit().fontFamily),
                  onTap: () {
                    Get.to(()=> AddANewAddress());
                    //Navigator.push(context, MaterialPageRoute(builder: (context)=>AddANewAddress()));
                  },
                  height: height * .07,
                  width: Width * 0.5),
            ),
            SizedBox(height: height * 0.05),
          ],
        ));
  }
}
