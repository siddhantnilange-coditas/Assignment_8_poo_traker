import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:poo_tracker/calender.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    double textScaleFactor = MediaQuery.of(context).textScaleFactor;
    if (textScaleFactor > 1.0) {
      textScaleFactor = 1.0;
    }
    List<bool> _isClickedList = List.generate(30, (index) => false);

    // TODO: implement build
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            bottom: -10,
            right: -10,
            child: InkWell(
              onTap: () {},
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(80))),
                child: Center(
                    child: Text(
                  '+',
                  textScaler: TextScaler.linear(textScaleFactor),
                  style: TextStyle(fontSize: 50, color: Colors.white),
                )),
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: 0,
            // left: 40,
            // bottom: 375,
            child: SvgPicture.asset(
              'assets/images/Group 46.svg',
            ),
          ),
          Positioned(
            // top: 0,
            // left: 40,
            bottom: 0,
            child: SvgPicture.asset(
              'assets/images/Group 55.svg',
            ),
          ),
          Container(
            // height: 963,
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Expanded(flex: 50, child: SizedBox()),
                Row(
                  children: [
                    Text(
                      'Dash Board',
                      textScaler: TextScaler.linear(textScaleFactor),
                      style: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(1, 170, 79, 1)),
                    ),
                    const Expanded(flex: 170, child: SizedBox()),
                    SizedBox(
                        height: 48,
                        child: SvgPicture.asset(
                          'assets/icons/create_acco_person.svg',
                        )),
                  ],
                ),
                const Expanded(flex: 47, child: SizedBox()),
                Container(
                  height: 120,
                  // padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: DateTime(
                            DateTime.now().year, DateTime.now().month + 1, 0)
                        .day,
                    itemBuilder: (context, index) {
                      DateTime date = DateTime(
                          DateTime.now().year, DateTime.now().month, index + 1);
                      String day = DateFormat('d').format(date);
                      String weekday = DateFormat.E().format(date);

                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            _isClickedList[index] = !_isClickedList[index];
                            print(_isClickedList[index]);
                          });
                        },
                        child: Container(
                          width: 90,
                          // height: 95,
                          margin: const EdgeInsets.only(right: 8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: Colors.black,
                              width: 1,
                            ),
                          ),
                          child: Stack(
                            children: [
                              if (_isClickedList[index])
                                Positioned(
                                  top: 8,
                                  right: 8,
                                  child: Container(
                                    width: 10,
                                    height: 10,
                                    decoration: BoxDecoration(
                                      color: Colors.green,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                ),
                              Center(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  // crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    // SizedBox(height: 9,),

                                    Text(
                                      day.toString(),
                                      textScaler:
                                          TextScaler.linear(textScaleFactor),
                                      style: const TextStyle(
                                        color:
                                            Color.fromARGB(255, 100, 100, 96),
                                        fontSize: 40,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                    const Expanded(flex: 10, child: SizedBox()),
                                    SizedBox(
                                        // width: 40,
                                        // height: 19,
                                        child: Text(
                                      weekday,
                                      textScaler:
                                          TextScaler.linear(textScaleFactor),
                                      style: const TextStyle(
                                          fontSize: 20,
                                          color: Color.fromARGB(
                                              255, 163, 160, 160)),
                                    )),
                                    Expanded(flex: 15, child: SizedBox()),

                                    SizedBox(
                                        // width: 40,
                                        // height: 20,
                                        child: SvgPicture.asset(
                                            'assets/icons/calender_poop.svg')),
                                    SizedBox(
                                      height: 15,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const Expanded(flex: 34, child: SizedBox()),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DailyCalender()),
                        );
                      },
                      child: Container(
                          child: SvgPicture.asset(
                              'assets/icons/view_calender_svg.svg')),
                    ),
                  ],
                ),
                const Expanded(flex: 34, child: SizedBox()),
                Row(
                  children: [
                    Text(
                      'Insight',
                      textScaler: TextScaler.linear(textScaleFactor),
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 117, 115, 115)),
                    ),
                    const Spacer(),
                    SizedBox(
                      width: 111,
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(1, 170, 79, 1),
                          // padding: EdgeInsets.symmetric(
                          //     horizontal: 40, vertical: 0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Week',
                          textScaler: TextScaler.linear(textScaleFactor),
                          style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 255, 255, 255)),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 125,
                      height: 50,
                      child: OutlinedButton(
                        style: ElevatedButton.styleFrom(
                          // backgroundColor: Color.fromRGBO(1, 170, 79, 1),
                          padding: EdgeInsets.symmetric(
                              horizontal: 40, vertical: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Month',
                          textScaler: TextScaler.linear(textScaleFactor),
                          style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 114, 111, 111)),
                        ),
                      ),
                    ),
                  ],
                ),
                const Expanded(flex: 31, child: SizedBox()),
                Container(
                  height: 396,
                  width: 328,
                  // color: const Color.fromARGB(255, 255, 255, 255),
                  padding: const EdgeInsets.only(left: 43, right: 43),
                  child: Column(
                    children: [
                      Text(
                        'Type chart compare',
                        textScaler: TextScaler.linear(textScaleFactor),
                        style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Color.fromARGB(255, 114, 111, 111)),
                      ),
                      SizedBox(
                        height: 328,
                        width: 328,
                        child: SvgPicture.asset(
                            'assets/icons/pie_chart_svg.svg',
                            fit: BoxFit.contain),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.miniEndDocked,

      //       floatingActionButtpon: FloatingActionButton(

      //   onPressed: () {},
      //   child: const Icon(Icons.add),
      // ),
    );
  }
}
