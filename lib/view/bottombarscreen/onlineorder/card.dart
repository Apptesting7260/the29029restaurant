import 'package:flutter/material.dart';
import 'package:the29029restaurant/view/bottombarscreen/onlineorder/details.dart';
import 'package:the29029restaurant/view/bottombarscreen/onlineorder/locationdelivery.dart';
import 'package:the29029restaurant/widgets/my_button.dart';

class DeeUi extends StatefulWidget {
  const DeeUi({super.key});

  @override
  State<DeeUi> createState() => _DeeUiState();
}

class _DeeUiState extends State<DeeUi> {
  var size, height, width;
  var count = 0;
  var result = 0;
  var tap = 0;
  List<Map<dynamic, dynamic>> li = [
    {
      'image': 'assets/drawericon/avocado sandwich (1).png',
      'head': 'Piyaza chicken',
      'subhead': "Strips of Corn Fed Chicken breast...",
      'rate': '£11.55'
    }
  ];
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
          // primary: false,
          //   title
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
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>DetUi()));
                    },
                    child: Container(
                        child: Image.asset("assets/drawericon/Group 17955.png"))),
                Center(
                  child: Container(
                    // color: Colors.red,
                      child: Center(
                          child: Text(
                            "Cart",
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: height / 6.5,

                child: ListView(
                    children: li
                        .map((e) => Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(e['image']!),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(

                                children: [
                                  Text(
                                    e['head']!,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall
                                        ?.copyWith(
                                        color: Color(0xff000000),
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    width: width/5,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      li.removeAt(0);
                                      setState(() {});
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(0,0,0,0),
                                      child: Align(
                                        alignment: Alignment(0,0),
                                        child: Container(
                                          child: Icon(Icons.close,color: Color(0xff41004C),),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: width * 0.01,
                              ),
                              Text(
                                e['subhead']!,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(
                                    color: Color(0xff8C8A9D),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w300),
                              ),
                              SizedBox(
                                height: width * 0.04,
                              ),
                              Text(
                                e['rate']!,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(
                                    color: Color(0xff911FDA),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700),
                              )
                            ],
                          ),
                          // InkWell(
                          //   onTap: () {
                          //     li.removeAt(0);
                          //     setState(() {});
                          //   },
                          //   child: Padding(
                          //     padding: const EdgeInsets.fromLTRB(0,0,0,0),
                          //     child: Align(
                          //       alignment: Alignment(0,0),
                          //       child: Container(
                          //         child: Icon(Icons.close,color: Colors.red,),
                          //       ),
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
                    ))
                        .toList()),
              ),
              Row(
                children: [
                  SizedBox(
                    width: width / 3.5,
                  ),
                  InkWell(
                      onTap: () {
                        tap = 1;
                        if (count > 0) {
                          count = count - 1;
                        }
                        result = count;
                        setState(() {});
                      },
                      child: Container(
                        child: tap == 1
                            ? Icon(Icons.remove_circle, color: Color(0xff41004c))
                            : Icon(Icons.remove_circle_outline),
                      )),
                  SizedBox(
                    width: width / 80,
                  ),
                  Container(
                      child: result < 10
                          ? Text(
                        "0$result",
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge
                            ?.copyWith(
                            color: Color(0xff000000),
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      )
                          : Text(
                        "$result",
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge
                            ?.copyWith(
                            color: Color(0xff000000),
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      )),
                  SizedBox(
                    width: width / 80,
                  ),
                  InkWell(
                      onTap: () {
                        tap = 2;
                        count = count + 1;
                        result = count;
                        setState(() {});
                      },
                      child: Container(
                          child: tap == 2
                              ? Icon(Icons.add_circle, color: Color(0xff41004c))
                              : Icon(Icons.add_circle_outline)))
                ],
              ),
              SizedBox(
                height: height / 40,
              ),
              Center(
                child: Text(
                  "Specific instructions/table number",
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Color(0xff000000),
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: height/50,
              ),
              Center(
                  child: SizedBox(
                      width: width / 1.2,
                      child: TextField(
                        textAlign: TextAlign.start,
                        textAlignVertical: TextAlignVertical.top,
                        maxLines: 5,
                        // textAlignHorizontal: ,
                        decoration: InputDecoration(
                            filled: true,
                            hintText: "Enter Specific instructions/table number",
                            hintStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
                                color: Color(0xff9796A1),
                                fontSize: 14,
                                fontWeight: FontWeight.w300),
                            fillColor: Color(0xffDCDCDC),

                            contentPadding: EdgeInsets.fromLTRB(30,40,10,0),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide:
                                BorderSide(width: 1, color: Color(0xffDCDCDC))),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide:
                                BorderSide(width: 1,color: Color(0xffDCDCDC)))),
                      ))),
              SizedBox(
                height: height / 30,
              ),
              MyButton(bgColor: Color(0xff41004C),
                  side: BorderSide(color: Color(0xff41004C)),
                  title:"Checkout", onTap:(){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LUi()));
                  },
                  height:50, width:200),
              // Center(
              //   child: InkWell(
              //     onTap: (){
              //       Navigator.push(context,
              //           MaterialPageRoute(builder: (context) => LUi()));
              //     },
              //     child: Container(
              //       height: height / 12.8,
              //       width: width / 2,
              //       child: Center(
              //           child: Text(
              //             "Checkout",
              //             style: Theme.of(context).textTheme.bodySmall?.copyWith(
              //                 color: Colors.white,
              //                 fontSize: 14,
              //                 fontWeight: FontWeight.w600),
              //           )),
              //       decoration: BoxDecoration(
              //           borderRadius: BorderRadius.circular(100),
              //           color: Color(0xff41004C)),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
