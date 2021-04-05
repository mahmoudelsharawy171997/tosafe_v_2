import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import '../globalElements.dart';

class calendar extends StatelessWidget {
  const calendar({
    Key key,
    @required CalendarController calendarController,
  }) : _calendarController = calendarController, super(key: key);

  final CalendarController _calendarController;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 0.2,
            blurRadius: 5,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: TableCalendar(
        weekendDays: [DateTime.saturday, DateTime.friday],

        rowHeight: 30,
        headerStyle: HeaderStyle(
          rightChevronIcon: Icon(Icons.keyboard_arrow_right,color: Colors.white,),
          leftChevronIcon: Icon(Icons.keyboard_arrow_left,color: Colors.white,),
          decoration: BoxDecoration(
              color: mainColor,
              borderRadius: BorderRadius.circular(15)
          ),
          headerPadding: EdgeInsets.all(0),
          headerMargin: EdgeInsets.only(bottom: 10),
          titleTextStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),
          formatButtonVisible: false,
          centerHeaderTitle: true,
        ),
        startingDayOfWeek: StartingDayOfWeek.saturday,
        builders: CalendarBuilders(
          selectedDayBuilder: (context, date, events) => Container(
              margin: const EdgeInsets.all(3),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: mainColor3,
                  borderRadius: BorderRadius.circular(10.0)),
              child: Text(
                date.day.toString(),
                style: TextStyle(color: mainColor,fontWeight: FontWeight.bold,fontSize: 15),
              )),
          todayDayBuilder: (context, date, events) => Container(
              margin: const EdgeInsets.all(4.0),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0)),
              child: Text(
                date.day.toString(),
                style: TextStyle(color: Colors.black),
              )),
        ),
        calendarController: _calendarController,
      ),
    );
  }
}