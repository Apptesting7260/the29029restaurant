import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutUS extends StatefulWidget {
  const AboutUS({super.key});

  @override
  State<AboutUS> createState() => _AboutUSState();
}

class _AboutUSState extends State<AboutUS> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading:GestureDetector(onTap: (){
          Navigator.pop(context);
        },
          child: Image.asset("assets/images/backbutton.png"),
        ),
        title: Text("About Us",
            style:Theme.of(context).
            textTheme.
            titleLarge?.copyWith(
                fontSize: 18,fontWeight: FontWeight.w600)
        ),
        centerTitle: true,
        // actions: [
        //   Padding(
        //     padding: const EdgeInsets.symmetric(horizontal:30),
        //     child: Icon(Icons.search_sharp,color: Color(0xff911FDA)),
        //   )
        // ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(right: 20, left: 20),
          child: Column(
            children: [
              SizedBox(height: height*0.02),
              ListTile(
                  onTap: () {},
                  tileColor: Color(0xffF5F5F5),
                  shape: OutlineInputBorder(
                    borderSide: BorderSide(color:Color(0xffF5F5F5)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  title: Text(
                    "The 29029 restaurant",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: GoogleFonts.outfit().fontFamily,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                  trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_right_alt,
                          color: Color(0xff911FDA)))
              ),
              SizedBox(height: height*0.01),
              ListTile(
                  onTap: () {},
                  tileColor: Color(0xffF5F5F5),
                  shape: OutlineInputBorder(
                    borderSide: BorderSide(color:Color(0xffF5F5F5)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  title: Text(
                    "Buffer",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: GoogleFonts.outfit().fontFamily,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                  trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_right_alt_outlined,
                          color: Color(0xff911FDA)))),
              SizedBox(height: height*0.01),
              ListTile(
                  onTap: () {},
                  tileColor: Color(0xffF5F5F5),
                  shape: OutlineInputBorder(
                    borderSide: BorderSide(color:Color(0xffF5F5F5)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  title: Text(
                    "Catering",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: GoogleFonts.outfit().fontFamily,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                  trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_right_alt_outlined,
                          color: Color(0xff911FDA)))),
            ],
          ),
        ),
      ),
    );
  }
}
