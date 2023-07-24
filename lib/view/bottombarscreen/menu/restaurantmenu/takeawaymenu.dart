import 'package:flutter/material.dart';
import 'package:the29029restaurant/view/bottombarscreen/menu/restaurantmenu/maincourse.dart';
import 'package:the29029restaurant/view/bottombarscreen/menu/restaurantmenu/starters.dart';

class TakeAwayMenu extends StatefulWidget {
  const TakeAwayMenu({super.key});

  @override
  State<TakeAwayMenu> createState() => _TakeAwayMenuState();
}

class _TakeAwayMenuState extends State<TakeAwayMenu> {
  var choice = 1;
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
            Navigator.pop(context);
          },
          child: Image.asset("assets/images/backbutton.png"),
        ),
        title: Text("Take Away Menu",
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(fontSize: 18, fontWeight: FontWeight.w600)),
        centerTitle: true,
        actions: [
          Icon(Icons.search,
            size: height * 0.04,
            weight: width,
            color: Color(0XFF911fda),
          )
        ],
      ),
      body: DefaultTabController(
        length: 4,
        child: Column(
          children: [
            SizedBox(height: height * 0.03),
            Material(
              child: Container(
                height: 35,
                color: Colors.white,
                child: TabBar(
                  labelPadding: EdgeInsets.only(right:5,left: 5),
                  physics: ClampingScrollPhysics(),
                  unselectedLabelColor:Color(0xff911FDA),
                  indicatorSize: TabBarIndicatorSize.label,
                  indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color:Color(0xff911FDA)
                  ),
                  tabs: [
                    Tab(
                      child:
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(
                                color:Color(0xff911FDA)
                              //color:choice==1 ?Color(0xff911FDA):Color(0xff9796A1)
                            )
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text("Starters"),
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(
                                color:Color(0xff911FDA)
                              // color: choice==2 ?Color(0xff911FDA) :Color(0xff9796A1)
                            )),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text("Main Course"),
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(
                                color:Color(0xff911FDA)
                              //color: choice==3 ?Color(0xff911FDA) :Color(0xff9796A1)
                            )),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text("Variety Foods"),
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(
                                color:Color(0xff911FDA)
                              //color: choice==4 ?Color(0xff911FDA) :Color(0xff9796A1)
                            )),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text("Side"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: height * 0.04),
            Expanded(
                child: TabBarView(
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    Starter(),MainCourse(), Starter(),MainCourse()

                  ],
                ))
          ],
        ),
      ),
    );
  }
}
