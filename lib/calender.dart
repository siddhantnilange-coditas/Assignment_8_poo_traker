
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:poo_tracker/widgets/colors.dart';
import 'package:table_calendar/table_calendar.dart';

class DailyCalender extends StatefulWidget {
  const DailyCalender({super.key});

  @override
  State<DailyCalender> createState() => _DailyCalenderState();
}

class _DailyCalenderState extends State<DailyCalender> {
  @override
  Widget build(BuildContext context) {
    DateTime today = DateTime.now();
    // TODO: implement build
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.arrow_back_rounded,
                      size: 25.0,
                      color: defaultTehemColor,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Text(
                      'Calender',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                          color: defaultTehemColor),
                    ),
                    Spacer(),
                    Container(
                      child: SvgPicture.asset('assets/icons/share.svg')),
                  ],
                ),
                Container(
                  // width: double.infinity,
                  // height: 800,
                  child:  TableCalendar(
          
                      calendarStyle: CalendarStyle(
                        cellAlignment: Alignment.topLeft,
                        defaultDecoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(width: 1, color: Colors.black.withOpacity(0.1),)
          
                        ), 
                        cellMargin: const EdgeInsets.symmetric(horizontal: 1.5, vertical: 1.5), 
                        weekendDecoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                         border: Border.all(width: 1, color: Colors.black.withOpacity(0.1),)
                        ),
                        defaultTextStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                        cellPadding: const EdgeInsets.only(left: 5, right: 0, top: 3),
                        todayTextStyle: const TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w700),
                        todayDecoration: BoxDecoration(borderRadius: BorderRadius.circular(4),border: Border.all(width: 1.5,color: defaultTehemColor,)),
                        holidayDecoration: const BoxDecoration(color: Colors.black,),
                        holidayTextStyle:  const TextStyle(color: Colors.black,),
                        weekendTextStyle: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                        weekNumberTextStyle: const TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
          
            outsideDaysVisible: false,
          ),
              
                    headerStyle: HeaderStyle(formatButtonVisible: false, titleCentered: true),
                    focusedDay: today,
                    firstDay: DateTime.utc(2010, 10, 5),
                    lastDay: DateTime.utc(2030, 10, 5),
                ),
                ),
              ],
            ),
          ),
                Positioned(
        bottom: -10,
        right: -10,
        child: InkWell(
          onTap: (){},
          child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(80))
            ),
            child: Center(child: Text('+', style: TextStyle(fontSize: 50, color: Colors.white),)),
          ),
        ),
          
  
      
       ), 
        
        ],
      ),
    );
  }
}
