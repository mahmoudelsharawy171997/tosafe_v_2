import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:tosafe_v_2/classes/dropdownlist.dart';
import 'package:tosafe_v_2/globalElements.dart';
import 'package:tosafe_v_2/widgets/calendar.dart';
import 'package:tosafe_v_2/widgets/notifiedAppBar.dart';
import 'evacuationReport.dart';
class createEvacuationReport extends StatefulWidget {
  @override
  _createEvacuationReportState createState() => _createEvacuationReportState();
}

class _createEvacuationReportState extends State<createEvacuationReport> {
  @override
  void initState() {
    super.initState();
    _calendarController=CalendarController();
    _dropdownlist=dropdownlist(dropdownItems: dropdownItems);
  }

  CalendarController _calendarController;
  dropdownlist _dropdownlist;
  int Id=188;
  bool _newValue1 = false;
  bool _newValue2 = true;
  bool _newValue3 = false;
  bool _newValue4 = false;
  bool _newValue5 = true;
  bool _newValue6 = true;
  bool _newValue7 = false;
  Widget build(BuildContext context) {
    var _counter=10;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back,
                color: mainColor),
            onPressed: () => Navigator.of(context).pop(),
          ),
          elevation: 0,
          backgroundColor: Colors.white,
          actions: [
            Container(margin: EdgeInsets.only(right: 15),child: notificationButton(counter: _counter)),
            Container(
              margin: EdgeInsets.only(right: 15),
              child: framedPhoto(path: 'images/pexels-edmond-dantès-4342498.png',width: 45,height: 45,),
            )
          ],
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: ListView(
            children: [
              Text('Create Evacuation Report',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
              Container(
                margin: EdgeInsets.only(top: 10,bottom: 10),
                padding: EdgeInsets.fromLTRB(15,10,15,10),
                decoration: BoxDecoration(
                  color: mainColor2,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text('Select the date',style: TextStyle(color: mainColor,fontWeight: FontWeight.bold,fontSize: 18),),
              ),
              Container(padding: EdgeInsets.symmetric(horizontal: 10),child: calendar(calendarController: _calendarController)),
              Container(
                margin: EdgeInsets.only(top: 10,bottom: 10),
                padding: EdgeInsets.fromLTRB(20,10,20,10),
                decoration: BoxDecoration(
                  color: mainColor2,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text('Details of report',style: TextStyle(color: mainColor,fontWeight: FontWeight.bold,fontSize: 18),),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    labelStyle: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 20,
                    ),
                    border: InputBorder.none,
                    labelText: 'Write here',
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10,bottom: 10),
                padding: EdgeInsets.fromLTRB(20,10,20,10),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(17, 169, 157, 0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text('Select the branch and employee',style: TextStyle(color: mainColor,fontWeight: FontWeight.bold,fontSize: 18),),
              ),
              _dropdownlist.build(context,'Branch'),
              Container(
                margin: EdgeInsets.only(top: 15),
                padding: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey[400],width: 0.5))),
                child: CheckboxListTile(
                  activeColor: mainColor,
                  value: _newValue1,
                  onChanged: (newValue) {
                    setState(() {
                      _newValue1 = newValue;
                    });
                  },
                  title: Text('Khaled Mohsen',style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
                  subtitle: RichText(
                    text: TextSpan(
                      text: 'ID  ',
                      style: TextStyle(color: Colors.grey[500],fontSize: 20,fontWeight: FontWeight.bold,height: 1.5),
                      children: <TextSpan>[
                        TextSpan(text: Id.toString(), style: TextStyle(color: mainColor)),
                      ],
                    ),
                  ),
                  isThreeLine: false,
                  dense: true,
                  secondary: Image.asset('images/noun_Employee.png'),
                  selected: true,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                padding: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey[400],width: 0.5))),
                child: CheckboxListTile(
                  activeColor: mainColor,
                  value: _newValue2,
                  onChanged: (newValue) {
                    setState(() {
                      _newValue2 = newValue;
                    });
                  },
                  title: Text('Mohamed Samy',style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
                  subtitle: RichText(
                    text: TextSpan(
                      text: 'ID  ',
                      style: TextStyle(color: Colors.grey[500],fontSize: 20,fontWeight: FontWeight.bold,height: 1.5),
                      children: <TextSpan>[
                        TextSpan(text: Id.toString(), style: TextStyle(color: mainColor)),
                      ],
                    ),
                  ),
                  isThreeLine: false,
                  dense: true,
                  secondary: Image.asset('images/noun_Employee.png'),
                  selected: true,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                padding: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey[400],width: 0.5))),
                child: CheckboxListTile(
                  activeColor: mainColor,
                  value: _newValue3,
                  onChanged: (newValue) {
                    setState(() {
                      _newValue3 = newValue;
                    });
                  },
                  title: Text('Nabil Ahmed',style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
                  subtitle: RichText(
                    text: TextSpan(
                      text: 'ID  ',
                      style: TextStyle(color: Colors.grey[500],fontSize: 20,fontWeight: FontWeight.bold,height: 1.5),
                      children: <TextSpan>[
                        TextSpan(text: Id.toString(), style: TextStyle(color: mainColor)),
                      ],
                    ),
                  ),
                  isThreeLine: false,
                  dense: true,
                  secondary: Image.asset('images/noun_Employee.png'),
                  selected: true,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                padding: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey[400],width: 0.5))),
                child: CheckboxListTile(
                  activeColor: mainColor,
                  value: _newValue4,
                  onChanged: (newValue) {
                    setState(() {
                      _newValue4 = newValue;
                    });
                  },
                  title: Text('Mahmoud Elsayed',style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
                  subtitle: RichText(
                    text: TextSpan(
                      text: 'ID  ',
                      style: TextStyle(color: Colors.grey[500],fontSize: 20,fontWeight: FontWeight.bold,height: 1.5),
                      children: <TextSpan>[
                        TextSpan(text: Id.toString(), style: TextStyle(color: mainColor)),
                      ],
                    ),
                  ),
                  isThreeLine: false,
                  dense: true,
                  secondary: Image.asset('images/noun_Employee.png'),
                  selected: true,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                padding: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey[400],width: 0.5))),
                child: CheckboxListTile(
                  activeColor: mainColor,
                  value: _newValue5,
                  onChanged: (newValue) {
                    setState(() {
                      _newValue5 = newValue;
                    });
                  },
                  title: Text('Taher Ellban',style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
                  subtitle: RichText(
                    text: TextSpan(
                      text: 'ID  ',
                      style: TextStyle(color: Colors.grey[500],fontSize: 20,fontWeight: FontWeight.bold,height: 1.5),
                      children: <TextSpan>[
                        TextSpan(text: Id.toString(), style: TextStyle(color: mainColor)),
                      ],
                    ),
                  ),
                  isThreeLine: false,
                  dense: true,
                  secondary: Image.asset('images/noun_Employee.png'),
                  selected: true,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                padding: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey[400],width: 0.5))),
                child: CheckboxListTile(
                  activeColor: mainColor,
                  value: _newValue6,
                  onChanged: (newValue) {
                    setState(() {
                      _newValue6 = newValue;
                    });
                  },
                  title: Text('Ayman Ramy',style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
                  subtitle: RichText(
                    text: TextSpan(
                      text: 'ID  ',
                      style: TextStyle(color: Colors.grey[500],fontSize: 20,fontWeight: FontWeight.bold,height: 1.5),
                      children: <TextSpan>[
                        TextSpan(text: Id.toString(), style: TextStyle(color: mainColor)),
                      ],
                    ),
                  ),
                  isThreeLine: false,
                  dense: true,
                  secondary: Image.asset('images/noun_Employee.png'),
                  selected: true,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                padding: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey[400],width: 0.5))),
                child: CheckboxListTile(
                  activeColor: mainColor,
                  value: _newValue7,
                  onChanged: (newValue) {
                    setState(() {
                      _newValue7 = newValue;
                    });
                  },
                  title: Text('Ibrahim Ahmed',style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
                  subtitle: RichText(
                    text: TextSpan(
                      text: 'ID  ',
                      style: TextStyle(color: Colors.grey[500],fontSize: 20,fontWeight: FontWeight.bold,height: 1.5),
                      children: <TextSpan>[
                        TextSpan(text: Id.toString(), style: TextStyle(color: mainColor)),
                      ],
                    ),
                  ),
                  isThreeLine: false,
                  dense: true,
                  secondary: Image.asset('images/noun_Employee.png'),
                  selected: true,
                ),
              ),
              bottomFlatButton(title: 'Create',color: mainColor,onpress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => evacuationReport()),
                );
              },),
            ],
          ),
        ),
      ),
    );
  }
}

