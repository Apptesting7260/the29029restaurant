import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the29029restaurant/data/response/status.dart';
import 'package:the29029restaurant/res/components/general_exception.dart';
import 'package:the29029restaurant/res/components/internet_exceptions_widget.dart';
import 'package:the29029restaurant/view/bottombarscreen/menu/restaurantmenu/maincourse.dart';
import 'package:the29029restaurant/view/bottombarscreen/menu/restaurantmenu/starters.dart';
import 'package:the29029restaurant/view_models/controller/tabling/tabling_controller.dart';

String ? slug;
class TakeAwayMenu extends StatefulWidget {
  const TakeAwayMenu({super.key});

  @override
  State<TakeAwayMenu> createState() => _TakeAwayMenuState();
}

class _TakeAwayMenuState extends State<TakeAwayMenu> {
  tabling_controller tabling_controllers = Get.put(tabling_controller());

  @override
  void initState() {
    tabling_controllers.tablingapi();
    // TODO: implement initState
    super.initState();
  }

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
          Icon(
            Icons.search,
            size: height * 0.04,
            weight: width,
            color: Color(0XFF911fda),
          )
        ],
      ),
      body: Obx(
        () {
          switch (tabling_controllers.rxRequestStatus.value) {
            case Status.LOADING:
              return const Center(child: CircularProgressIndicator());
            case Status.ERROR:
              if (tabling_controllers.error.value == 'No internet') {
                return InterNetExceptionWidget(
                  onPress: () {},
                );
              } else {
                return GeneralExceptionWidget(onPress: () {});
              }
            case Status.COMPLETED:
              return DefaultTabController(
                length: tabling_controllers
                    .userList.value.takeAwayMenuTabing!.length,
                child: Column(
                  children: [
                    SizedBox(height: height * 0.03),
                    Material(
                      child: Container(
                        height: height * 0.05,
                        width: width * 1,
                        color: Colors.white,
                        child: TabBar(
                          isScrollable: true,
                          labelPadding: EdgeInsets.only(right: 5, left: 5),
                          physics: ClampingScrollPhysics(),
                          unselectedLabelColor: Color(0xff911FDA),
                          indicatorSize: TabBarIndicatorSize.label,
                          indicator: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Color(0xff911FDA)),
                          tabs: [
                            Tab(
                              child: Container(
                                height: height * 0.05,
                                width: width * 0.3,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    border:
                                        Border.all(color: Color(0xff911FDA))),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                      tabling_controllers.userList.value
                                          .takeAwayMenuTabing![0].categoryName
                                          .toString(),
                                      //"Starters"
                                      overflow: TextOverflow.ellipsis),
                                ),
                              ),
                            ),
                            Tab(
                              child: Container(
                                height: height * 0.05,
                                width: width * 0.3,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    border:
                                        Border.all(color: Color(0xff911FDA))),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                      tabling_controllers.userList.value
                                          .takeAwayMenuTabing![1].categoryName
                                          .toString()
                                      //"Main Course"
                                      ,
                                      overflow: TextOverflow.ellipsis),
                                ),
                              ),
                            ),
                            Tab(
                              child: Container(
                                height: height * 0.05,
                                width: width * 0.3,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    border:
                                        Border.all(color: Color(0xff911FDA))),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                      tabling_controllers.userList.value
                                          .takeAwayMenuTabing![2].categoryName
                                          .toString(),
                                      //"Variety Foods"
                                      overflow: TextOverflow.ellipsis),
                                ),
                              ),
                            ),
                            Tab(
                                child: Container(
                              height: height * 0.05,
                              width: width * 0.3,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  border: Border.all(color: Color(0xff911FDA))),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                    tabling_controllers.userList.value
                                        .takeAwayMenuTabing![3].categoryName
                                        .toString(),
                                    //"Side",
                                    overflow: TextOverflow.ellipsis),
                              ),
                            )),
                            Tab(
                              child: Container(
                                height: height * 0.05,
                                width: width * 0.3,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    border:
                                        Border.all(color: Color(0xff911FDA))),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                      tabling_controllers.userList.value
                                          .takeAwayMenuTabing![4].categoryName
                                          .toString(),
                                      //"Starters",
                                      overflow: TextOverflow.ellipsis),
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
                        Starter(),
                        Starter(),
                        MainCourse(),
                        Starter(),
                        Starter()
                      ],
                    ))
                  ],
                ),
              );
          }
        },
      ),
    );
  }
}
