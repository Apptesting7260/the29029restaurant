import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the29029restaurant/widgets/my_button.dart';

class FanWall1 extends StatefulWidget {
  const FanWall1({super.key});

  @override
  State<FanWall1> createState() => _FanWall1State();
}

class _FanWall1State extends State<FanWall1> {
  var choose =2 ;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(right: 20,left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Container(height:116, width: width,
            color: Color(0xffF5F5F5),
                child: Column(
                  children: [
                    ListTile(
                      leading:  CircleAvatar(
                        radius: 25,
                        backgroundImage:
                        AssetImage("assets/drawericon/user.png"),
                      ),
                      title:Text("Hector Hickmott",style:
                        Theme.of(context).
                        textTheme.
                        bodyLarge),
                      subtitle: Text("Very tasty! yum",style:
                        Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Color(0xff9796A1),fontWeight: FontWeight.w300
                        ),),
                      trailing: Text("4 years ago",style:
                        Theme.of(context).textTheme.labelSmall?.copyWith(
                          color: Color(0xff9796A1),fontWeight:FontWeight.w300,
                          fontFamily: GoogleFonts.outfit().fontFamily
                        ),),

                    ),
                    Padding(
                      padding: const EdgeInsets.only(right:150),
                      child: MyButton(
                          bgColor: Color(0xff41004C),
                          title: "Reply",
                          onTap: () { },
                          height:25,
                          width: 80),
                    ),
                  ],
                ),
              ),
              SizedBox(height: height*0.02),
              Container(height:116, width: width,
                color: Color(0xffF5F5F5),
                child: Column(
                  children: [
                    ListTile(
                      leading:  CircleAvatar(
                        radius: 25,
                        backgroundImage:
                        AssetImage("assets/drawericon/user.png"),
                      ),
                      title:Text("Hector Hickmott",style:
                      Theme.of(context).
                      textTheme.
                      bodyLarge),
                      subtitle: Text("Very tasty! yum",style:
                      Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Color(0xff9796A1),fontWeight: FontWeight.w300
                      ),),
                      trailing: Text("4 years ago",style:
                      Theme.of(context).textTheme.labelSmall?.copyWith(
                          color: Color(0xff9796A1),fontWeight:FontWeight.w300,
                          fontFamily: GoogleFonts.outfit().fontFamily
                      ),),

                    ),
                    Padding(
                      padding: const EdgeInsets.only(right:150),
                      child: MyButton(
                          bgColor: Color(0xff41004C),
                          title: "Reply",
                          onTap: () { },
                          height:25,
                          width: 80),
                    ),
                  ],
                ),
              ),

           SizedBox(height: height*0.2),
              Center(
                child: MyButton(
                    bgColor: Color(0xff41004C),
                    title: "Post Comment",
                    onTap: () { },
                    height: 50,
                    width: 200),
              ),
              SizedBox(height: height*0.03)
            ],
          ),
        ),
      ),
    );
  }
}
