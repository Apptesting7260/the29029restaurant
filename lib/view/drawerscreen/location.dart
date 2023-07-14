import 'package:flutter/material.dart';
import 'package:the29029restaurant/widgets/my_button.dart';
class Location extends StatefulWidget {
  const Location({super.key});
  @override
  State<Location> createState() => _LocationState();
}
class _LocationState extends State<Location> {
  var size, height, width;
  double hi = 60.0;
  double hf = 100.0;
  bool rao = false;
  void tj() {
    setState(() {
      rao = !rao;
      hi = rao ? hf : 60.0;
    });
  }
  double containerHeight = 60.0;
  double expandedContainerHeight = 100.0;
  bool isExpanded = false;
  void toggleContainerSize() {
    setState(() {
      isExpanded = !isExpanded;
      containerHeight = isExpanded ? expandedContainerHeight : 60.0;
    });
  }
  double _height = 150;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(width / 7),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Padding(
            padding: EdgeInsets.symmetric(
              vertical: width / 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                        child: Image.asset("assets/drawericon/Group 17955.png"))),
                Center(
                  child: Container(
                      // color: Colors.red,
                      child: Center(
                          child: Text(
                    "Location",
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: Color(0xff323643), fontWeight: FontWeight.w600),
                  ))),
                ),
                Container()
              ],
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: height / 29,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width / 24),
                  child: Container(
                    height: height / 3.5,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset("assets/drawericon/mappppp.png",
                          fit: BoxFit.fill),
                    ),
                  ),
                ),
                SizedBox(height: height / 15),
                Text(
                  "The 29029 Restaurant Wareham",
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Color(0xff0000000),
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                ),
                SizedBox(height: height / 110),
                Text("Sandford Rd,Sandford,Wareham BH20 7DD,\nUnited kingdom",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Color(0xff9796A1),
                        fontWeight: FontWeight.w600,
                        fontSize: 14)),
                SizedBox(height: height / 25),
                Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [Container(
                      height: height / 5.5, width: width / 2.3,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset("assets/drawericon/image 20.png",
                              fit: BoxFit.fill)),
                    ),
                    Container(height: height / 5.5, width: width / 2.3,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            "assets/drawericon/image 20.png",
                            fit: BoxFit.fill,
                          )),
                    ),
                  ],
                ),
                SizedBox(height: height / 25),
                Center(
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 50),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xffF5F5F5),
                    ),
                    height: containerHeight,
                    width: width / 1.1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: width / 35,
                          ), //after removing const
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Opening Hours",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall
                                      ?.copyWith(
                                          color: Color(0xff000000),
                                          fontWeight: FontWeight.w600,
                                          fontSize: 12)),
                              GestureDetector(
                                onTap:
                                    toggleContainerSize, // Toggle the container size when clicked
                                child: Row(
                                  children: [
                                    Icon(Icons.keyboard_arrow_down_sharp,
                                        size: 30,
                                        color:
                                            Colors.black), // Your dropdown icon
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        containerHeight > 90
                            ? Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: width / 35,
                                ), //after removing const
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Opening Hours",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall
                                            ?.copyWith(
                                                color: Color(0xff9796A1),
                                                fontWeight: FontWeight.w600,
                                                fontSize: 12)),
                                    Text("12:00-02:30 PM",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall
                                            ?.copyWith(
                                                color: Color(0xff9796A1),
                                                fontWeight: FontWeight.w600,
                                                fontSize: 12))
                                  ],
                                ))
                            : Container(
                                height: 1,
                                width: 1,
                              ),
                        containerHeight > 90
                            ? Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: width / 35,
                                ), //after removing const

                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Opening Hours",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall
                                            ?.copyWith(
                                                color: Color(0xff9796A1),
                                                fontWeight: FontWeight.w600,
                                                fontSize: 12)),
                                    Text("05:30-11:00 PM",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall
                                            ?.copyWith(
                                                color: Color(0xff9796A1),
                                                fontWeight: FontWeight.w600,
                                                fontSize: 12))
                                  ],
                                ))
                            : Container(
                                height: 1,
                                width: 1,
                              ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: height / 25,
                ),
                AnimatedContainer(
                  duration: Duration(milliseconds: 10),
                  width: width / 1.1,
                  height: hi,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: width / 35),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Comments",
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(
                                    color: Color(0xff000000),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12)),
                        GestureDetector(
                          onTap: tj, // Toggle the container size when clicked
                          child: Row(
                            children: [
                              Icon(Icons.keyboard_arrow_down_sharp,
                                  size: 30,
                                  color: Colors.black), // Your dropdown icon
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xffF5F5F5)),
                ),
                SizedBox(
                  height: height / 20,
                ),
                Center(
                  child:
                    MyButton( bgColor: Color(0xff41004C),
                        title: "Post Comment", onTap:(){},
                        height:50, width: 200)
                  // InkWell(
                  //   onTap: () {
                  //     // Navigator.push(context,
                  //     //     MaterialPageRoute(builder: (context) => LUi()));
                  //   },
                  //   child:
                  //   Container(
                  //     height: height / 12.8,
                  //     width: width / 2,
                  //     child: Center(
                  //         child: Text(
                  //       "Post Comment",
                  //       style: TextStyle(color: Colors.white),
                  //     )),
                  //     decoration: BoxDecoration(
                  //         borderRadius: BorderRadius.circular(100),
                  //         color: Color(0xff41004C)),
                  //   ),
                  // ),
                ),
                SizedBox(
                  height: height / 15,
                ),
                Center(
                  child: Container(
                    width: width / 1.1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: height / 10,
                          width: width / 7,
                          child: Icon(
                            Icons.call,
                            color: Color(0xff911FDA),
                          ),
                          decoration: BoxDecoration(
                              color: Color(0xff911FDA).withOpacity(0.100),
                              shape: BoxShape.circle),
                        ),
                        Container(
                          height: height / 10,
                          width: width / 7,
                          child: Image.asset("assets/drawericon/send (1).png"),
                          decoration: BoxDecoration(
                              color: Color(0xff911FDA).withOpacity(0.100),
                              shape: BoxShape.circle),
                        ),
                        Container(
                          height: height / 10,
                          width: width / 7,
                          child: Icon(Icons.email, color: Color(0xff911FDA)),
                          decoration: BoxDecoration(
                              color: Color(0xff911FDA).withOpacity(0.100),
                              shape: BoxShape.circle),
                        ),
                        Container(
                          height: height / 10,
                          width: width / 7,
                          child: Icon(Icons.home, color: Color(0xff911FDA)),
                          decoration: BoxDecoration(
                              color: Color(0xff911FDA).withOpacity(0.100),
                              shape: BoxShape.circle),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: height / 5,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
