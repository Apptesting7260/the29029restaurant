import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:the29029restaurant/view/bottombarscreen/bookatablepage/schedulereservation.dart';
import 'package:the29029restaurant/view/bottombarscreen/bookatablepage/schedulereservation3.dart';
import 'package:the29029restaurant/widgets/my_button.dart';

class ScheduleReservation2 extends StatefulWidget {
  const ScheduleReservation2({super.key});

  @override
  State<ScheduleReservation2> createState() => _ScheduleReservation2State();
}

class _ScheduleReservation2State extends State<ScheduleReservation2> {
  List<Map<String, String>> time = [
    {'': '6:00 PM'},
    {'': '6:30 PM'},
    {'': '7:00 PM'},
    {'': '7:30 PM'},
    {'': '8:00 PM'},
    {'': '8:30 PM'},
    {'': '9:00 PM'},
    {'': '9:30 PM'},
    {'': '10:00 PM'},
    {'': '10:30 PM'}
  ];

  List<Map<String, String>> people = [
    {'': '1-2'},
    {'': '2-3'},
    {'': '3-4'},
    {'': '4-5'},
    {'': '5-6'},
    {'': '6-7'},
    {'': '7-8'},
    {'': '8-9'},
    {'': '9-10'},
    {'': '10-11'}
  ];

  var _formKey = GlobalKey<FormState>();


  List<int> tappedtime = [];
  List<int> tapped = [];

  var choosetime = 2;
  var choosepeople = 2;

  late TextEditingController dateController =
      TextEditingController(text: DateTime.now().toString());
  String _valueChanged1 = '';
  String _valueToValidate1 = '';
  String _valueSaved1 = '';

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
                  builder: (context) => ScheduleReservation(),
                ));
          },
          child: Image.asset("assets/images/backbutton.png"),
        ),
        title: Text("Schedule Reservation",
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(fontSize: 18, fontWeight: FontWeight.w600)),
        centerTitle: true,
      ),
      body: Form(
        key: _formKey,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    "Book A Table",
                    style: Theme.of(context).textTheme.displayMedium?.copyWith(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        fontFamily: GoogleFonts.outfit().fontFamily),
                  ),
                ),
                SizedBox(height: height * 0.01),
                Text(
                  "Date",
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontFamily: GoogleFonts.outfit().fontFamily),
                ),
                SizedBox(height: height * 0.005),
                DateTimePicker(
                  type: DateTimePickerType.date,
                  dateMask: 'dd, MM, yyyy',
                  controller: dateController,
                  decoration: InputDecoration(
                      suffixIcon: Icon(Icons.event, color: Color(0xff911FDA)),
                      contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide:
                              BorderSide(color: Colors.black, width: 1)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide:
                              BorderSide(color: Colors.black, width: 1))),
                  firstDate: DateTime(2022),
                  lastDate: DateTime(2100),
                  //dateLabelText: 'Date',
                  onChanged: (val) => setState(() => _valueChanged1 = val),
                  validator: (val) {
                    setState(() => _valueToValidate1 = val ?? '');
                    return null;
                  },
                  onSaved: (val) => setState(() => _valueSaved1 = val ?? ''),
                ),
                SizedBox(height: height * 0.02),
                Text(
                  "Time",
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontFamily: GoogleFonts.outfit().fontFamily),
                ),
                SizedBox(height: height * 0.01),
                Container(
                  height: height * 0.05,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: time.length,
                      itemBuilder: (BuildContext context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: SizedBox(
                            // width: 85,
                            height: 30,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: tappedtime.contains(index)
                                      ? Color(0xff911FDA)
                                      : Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      side: BorderSide(
                                          color: tappedtime.contains(index)
                                              ? Color(0xff911FDA)
                                              : Color(0xff9796A1)))),
                              onPressed: () {
                                choosetime = 2;
                                setState(() {
                                  if (tappedtime.contains(index)) {
                                    this.setState(() {
                                      tappedtime.remove(index);
                                    });
                                  } else {
                                    this.setState(() {
                                      tappedtime.add(index);
                                    });
                                  }
                                });
                              },
                              child: Text(
                                time[index][''] ?? '',
                                style: TextStyle(
                                    color: tappedtime.contains(index)
                                        ? Colors.white
                                        : Color(0xff9796A1)),
                              ),
                            ),
                          ),
                        );
                      }),
                ),
                SizedBox(height: height * 0.01),
                Text(
                  "How Many People",
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontFamily: GoogleFonts.outfit().fontFamily),
                ),
                SizedBox(height: height * 0.01),
                Container(
                  height: height * 0.05,
                  // width: 340,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: SizedBox(
                            height: 30,
                            //width: 60,
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  choosepeople == 2;
                                  if (tapped.contains(index)) {
                                    this.setState(() {
                                      tapped.remove(index);
                                    });
                                  } else {
                                    this.setState(() {
                                      tapped.add(index);
                                    });
                                  }
                                });
                              },
                              child: Text(
                                people[index][''] ?? '',
                                style: TextStyle(
                                    color: tapped.contains(index)
                                        ? Colors.white
                                        : Color(0xff9796A1)),
                              ),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: tapped.contains(index)
                                      ? Color(0xff911FDA)
                                      : Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25),
                                      side: BorderSide(
                                          color: tapped.contains(index)
                                              ? Color(0xff911FDA)
                                              : Color(0xff9796A1)))),
                            ),
                          ),
                        );
                      }),
                ),
                SizedBox(height: height * 0.05),
                Center(
                    child: MyButton( bgColor: Color(0xff41004C),
                        title: "Continue",
                        txtStyle: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                            fontFamily: GoogleFonts.outfit().fontFamily),
                        onTap: () {
                          if (_formKey.currentState!.validate()) {
                            _formKey.currentState!.save();
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ScheduleReservation3(),
                                ));
                          }
                        },
                        height: height * 0.06,
                        width: width * 0.5),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
