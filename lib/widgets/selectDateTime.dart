import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tosafe_v_2/globalElements.dart';

class selectDateTime extends StatefulWidget {
  @override
  _selectDateTimeState createState() => _selectDateTimeState();
}

class _selectDateTimeState extends State<selectDateTime> {
  DateTime newTime,newdate;
  String formattedTime,formattedDate;

  @override
  void initState() {
    newTime=DateTime.now();
    newdate=DateTime.now();
    formattedTime = DateFormat('h:mm a').format(newTime);
    formattedDate = DateFormat('dd-MM-yyyy').format(newdate);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        children: [
          title(content: 'Select time and date'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(children: [
                Text('     HR   ',style: TextStyle(color: mainColor,fontSize: 20,fontWeight: FontWeight.bold,height: 2),),
                Text('MIN',style: TextStyle(color: mainColor,fontSize: 20,fontWeight: FontWeight.bold,height: 2),),
              ],),
              Container(
                  width: MediaQuery.of(context).copyWith().size.width*0.6,
                  alignment: Alignment.center,
                  child: Text('Date',style: TextStyle(color: mainColor,fontSize: 20,fontWeight: FontWeight.bold,height: 2),)),
            ],),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 10),
                height: 180,
                width: MediaQuery.of(context).copyWith().size.width*0.35,
                child: CupertinoTheme(
                  data: CupertinoThemeData(
                    textTheme: CupertinoTextThemeData(
                      dateTimePickerTextStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          letterSpacing: 1
                      ),
                    ),
                  ),
                  child: CupertinoDatePicker(
                    initialDateTime: DateTime.now(),
                    mode: CupertinoDatePickerMode.time,
                    onDateTimeChanged: (DateTime newTime) {
                      setState(() {
                        this.newTime=newTime;
                      });
                    },
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                height: 180,
                width: MediaQuery.of(context).copyWith().size.width*0.55,
                child: CupertinoTheme(
                  data: CupertinoThemeData(
                    textTheme: CupertinoTextThemeData(
                      dateTimePickerTextStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  child: CupertinoDatePicker(
                    mode: CupertinoDatePickerMode.date,
                    initialDateTime: DateTime.now(),
                    onDateTimeChanged: (DateTime newdate) {
                      setState(() {
                        this.newdate=newdate;
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(children: [
                Image.asset('images/noun_Time.png'),
                Text(DateFormat('    h:mm a').format(newTime),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),
              ],),
              Row(children: [
                Image.asset('images/noun_calender_2.png'),
                Text(DateFormat('    dd-MM-yyyy  ').format(newdate),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),
              ],),
            ],
          ),
        ],
      ),
    );
  }

}
