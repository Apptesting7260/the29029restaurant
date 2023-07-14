import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the29029restaurant/view/bottombarscreen/bookatablepage/schedulereservation.dart';
import 'package:the29029restaurant/view/bottomnavigationbar/bottomnavigation.dart';
import 'package:the29029restaurant/widgets/my_button.dart';
import 'package:get/get.dart';
class BookATable extends StatefulWidget {
  const BookATable({super.key});

  @override
  State<BookATable> createState() => _BookATableState();
}

class _BookATableState extends State<BookATable> {
  bool click = true;
  bool click1 =true;
  var choose =2 ;

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
            //Get.back();

            // Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //       builder: (context) => BottomNavigation(),
            //     ));
          },
          child: Image.asset("assets/images/backbutton.png"),
        ),
        title: Text("Book A Table",
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(fontSize: 18, fontWeight: FontWeight.w600)),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(right: 20,left: 20),
          child: Column(
           crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(child: Image.asset("assets/images/dinnertable.png")),
                SizedBox(height: height*0.01),
                Text("Book Your Table",
                style:Theme.of(context).textTheme.headlineMedium?.copyWith(
                  color: Colors.black,fontSize: 20,fontWeight: FontWeight.w600,
                  fontFamily: GoogleFonts.outfit().fontFamily) ,
                ),
              SizedBox(height: height*0.005),
              Text("Lorem lpsum is simply dummy text of the\n printing and typesetting industry.",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Color(0xff9796A1),fontSize: 14,fontWeight: FontWeight.w300,
                  fontFamily: GoogleFonts.outfit().fontFamily
              ),),
              SizedBox(height: height*0.05),
              MyButton( bgColor: Color(0xff41004C),
                  title:"Schedule Reservation",
                  txtStyle: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontFamily: GoogleFonts.outfit().fontFamily),
                  onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>ScheduleReservation(),
                    ));
              },     height: 50,
                  width: 200),
              SizedBox(height: height*0.05),
              Row(
               mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 35,width:100,
                    child: ElevatedButton(
                        onPressed: (){
                          choose = 1;
                          setState(() {
                           // click = !click;
                          });
                        },
                        child: Text("Upcoming",
                          style: TextStyle(
                       color:  choose == 1 ?  Colors.white : Color(0xff911FDA),
                            fontFamily: GoogleFonts.outfit().fontFamily,fontSize: 12
                        ),),
                      style:
                      ElevatedButton.styleFrom(backgroundColor: choose == 1 ?Color(0xff911FDA): Colors.white,
                        shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular( 25),
                            side: BorderSide(color:Color(0xff911FDA)
                            )
                            )
                    ),
                    ),
                  ),
                  SizedBox(width: width*0.05),
                  SizedBox(
                    height: 35,width: 100,
                    child: ElevatedButton(
                      onPressed: (){
                        choose = 2 ;
                        setState(() {
                          //click1 = !click1;
                        });
                      },
                      child: Text("Past",
                        style: TextStyle(
                            color:  choose == 2 ?  Colors.white : Color(0xff911FDA),
                            fontFamily: GoogleFonts.outfit().fontFamily,fontSize: 12
                        ),),
                      style:
                      ElevatedButton.styleFrom(backgroundColor: choose == 2 ?Color(0xff911FDA): Colors.white,
                          shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular( 25),
                              side: BorderSide(color:Color(0xff911FDA)
                              )
                          )
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
