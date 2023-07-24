import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the29029restaurant/view/bottombarscreen/menu/restaurantmenu/piyazachicken.dart';

class MainCourse extends StatefulWidget {
  const MainCourse({super.key});

  @override
  State<MainCourse> createState() => _MainCourseState();
}

class _MainCourseState extends State<MainCourse> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(right: 20, left: 20),
            child: Column(
              children: [
                GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: .6,
                      crossAxisSpacing: 11,
                      mainAxisSpacing: 11,
                      mainAxisExtent: 270,
                    ),
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Get.to(() => PiyazaChicken());
                        },
                        child: Container(
                          height: height * 0.3,
                          width: width * 0.4,
                          decoration: BoxDecoration(
                              color: Color(0xffF5F5F5),
                              borderRadius: BorderRadius.circular(25)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(height: height * 0.02),
                              Center(
                                  child: Image.asset(
                                      'assets/drawericon/avocado sandwich (1).png')),
                              Text(
                                "Piyaza Chicken ",
                                textAlign: TextAlign.center,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: height * 0.01,
                              ),
                              Text(
                                "Strips of Corn Fed Chic...",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(
                                        color: Color(0xff9796A1),
                                        fontWeight: FontWeight.w300),
                              ),
                              SizedBox(height: height * 0.01),
                              Text(
                                "£11.55",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(
                                        color: Color(0xff911FDA),
                                        fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                        ),
                      );
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
