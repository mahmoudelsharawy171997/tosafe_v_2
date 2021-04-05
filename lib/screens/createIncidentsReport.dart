import 'package:flutter/material.dart';
import 'package:tosafe_v_2/classes/title.dart';
import 'package:tosafe_v_2/widgets/selectDateTime.dart';
import 'incidentsReport.dart';
import 'package:tosafe_v_2/classes/dropdownlist.dart';
import 'package:tosafe_v_2/globalElements.dart';
import 'package:tosafe_v_2/widgets/notifiedAppBar.dart';
class createIncidentsReport extends StatefulWidget {
  @override
  _createIncidentsReportState createState() => _createIncidentsReportState();
}

class _createIncidentsReportState extends State<createIncidentsReport> {
  selectDateTime _selectDateTime=selectDateTime();
  bool iAmReportingAbout_1 = false;
  bool iAmReportingAbout_2 = false;
  bool iAmReportingAbout_3 = false;
  bool have_1 = false;
  bool have_2 = false;
  bool did_1 = false;
  bool did_2 = false;
  bool oneOff = false;
  bool Daily = false;
  bool Weekly = false;
  bool Monthly = false;
  bool Monthly6 = false;
  dropdownlist _dropdownlist;
  void initState() {
    super.initState();
    _dropdownlist=dropdownlist(dropdownItems: dropdownItems);
  }
  @override
  int _counter=10;
  Widget build(BuildContext context) {
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
        body: ListView(
          children: [
            Container(
              height: 100,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Create Incidents Report',
                      style:
                      TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                  Text(
                    formattedDate,
                    style: TextStyle(fontSize: 20, color: Colors.grey[700]),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                title(content: 'Select the branch'),
                Container(margin: EdgeInsets.symmetric(vertical: 10,),child: _dropdownlist.build(context,'Branch')),
                title(content: 'Title'),
                inputComment(hint: 'Write incident title',),
                title(content: 'I am reporting about'),
                Container(
                  padding: EdgeInsets.only(right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            activeColor: mainColor,
                            value: iAmReportingAbout_1,
                            onChanged: (value) {
                              setState(() {
                                iAmReportingAbout_1 = value;
                                iAmReportingAbout_2 = !value;
                                iAmReportingAbout_3 = !value;
                              });
                            },
                          ),
                          Text('Injury',style: TextStyle(fontSize: 20,),),
                        ],
                      ),
                      Row(
                        children: [
                        Checkbox(
                          activeColor: mainColor,
                          value: iAmReportingAbout_2,
                          onChanged: (value) {
                            setState(() {
                              iAmReportingAbout_2 = value;
                              iAmReportingAbout_1 = !value;
                              iAmReportingAbout_3 = !value;
                            });
                          },
                        ),
                        Text('Fire',style: TextStyle(fontSize: 20),),
                      ],),
                      Row(
                        children: [
                          Checkbox(
                            activeColor: mainColor,
                            value: iAmReportingAbout_3,
                            onChanged: (value) {
                              setState(() {
                                iAmReportingAbout_3 = value;
                                iAmReportingAbout_1 = !value;
                                iAmReportingAbout_2 = !value;
                              });
                            },
                          ),
                          Text('Nearmiss',style: TextStyle(fontSize: 20),),
                        ],),
                    ],
                  ),
                ),
                title(content: 'Have you told your manager about this Incident ?'),
                Container(
                  padding: EdgeInsets.only(right: 150),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            activeColor: mainColor,
                            value: have_1,
                            onChanged: (value) {
                              setState(() {
                                have_1 = value;
                                have_2 = !value;
                              });
                            },
                          ),
                          Text('Yes',style: TextStyle(fontSize: 20,),),
                        ],
                      ),
                      Row(
                        children: [
                        Checkbox(
                          activeColor: mainColor,
                          value: have_2,
                          onChanged: (value) {
                            setState(() {
                              have_2 = value;
                              have_1 = !value;
                            });
                          },
                        ),
                        Text('No',style: TextStyle(fontSize: 20),),
                      ],),
                    ],
                  ),
                ),
                _selectDateTime,
                title(content: 'Names of witnesses ( If any )'),
                inputComment(hint: 'Write Names of witnesses',),
                title(content: 'Where exactly , did it happen ?'),
                inputComment(hint: 'Write area of incident',),
                title(content: 'What were you doing at the time ?'),
                inputComment(hint: 'Write here',),
                title(content: 'Provide a detailed descriptions of incident'),
                inputComment(hint: 'Write details of incident',),
                title(content: 'What could have been done to prevent this incident from happening ?'),
                inputComment(hint: 'Write here',),
                title(content: 'What was your immediate action when this incident happened ?'),
                inputComment(hint: 'Write here',),
                title(content: 'Did anyone suffer a injury resulting from this incident ?'),
                Container(
                  padding: EdgeInsets.only(right: 150),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            activeColor: mainColor,
                            value: did_1,
                            onChanged: (value) {
                              setState(() {
                                did_1 = value;
                                did_2 = !value;
                              });
                            },
                          ),
                          Text('Yes',style: TextStyle(fontSize: 20,),),
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                            activeColor: mainColor,
                            value: did_2,
                            onChanged: (value) {
                              setState(() {
                                did_2 = value;
                                did_1 = !value;
                              });
                            },
                          ),
                          Text('No',style: TextStyle(fontSize: 20),),
                        ],),
                    ],
                  ),
                ),
                title(content: 'Chance of the near miss , incident or accident recurring'),
                Container(
                  padding: EdgeInsets.only(right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            activeColor: mainColor,
                            value: oneOff,
                            onChanged: (value) {
                              setState(() {
                                oneOff = value;
                                Daily = !value;
                                Weekly = !value;
                                Monthly = !value;
                                Monthly6 = !value;
                              });
                            },
                          ),
                          Text('One off',style: TextStyle(fontSize: 20,),),
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                            activeColor: mainColor,
                            value: Daily,
                            onChanged: (value) {
                              setState(() {
                                oneOff = !value;
                                Daily = value;
                                Weekly = !value;
                                Monthly = !value;
                                Monthly6 = !value;
                              });
                            },
                          ),
                          Text('Daily',style: TextStyle(fontSize: 20),),
                        ],),
                      Row(
                        children: [
                          Checkbox(
                            activeColor: mainColor,
                            value: Weekly,
                            onChanged: (value) {
                              setState(() {
                                oneOff = !value;
                                Daily = !value;
                                Weekly = value;
                                Monthly = !value;
                                Monthly6 = !value;
                              });
                            },
                          ),
                          Text('Weekly',style: TextStyle(fontSize: 20),),
                        ],),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  padding: EdgeInsets.only(right: 95),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            activeColor: mainColor,
                            value: Monthly,
                            onChanged: (value) {
                              setState(() {
                                oneOff = !value;
                                Daily = !value;
                                Weekly = !value;
                                Monthly = value;
                                Monthly6 = !value;
                              });
                            },
                          ),
                          Text('Monthly',style: TextStyle(fontSize: 20,),),
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                            activeColor: mainColor,
                            value: Monthly6,
                            onChanged: (value) {
                              setState(() {
                                oneOff = !value;
                                Daily = !value;
                                Weekly = !value;
                                Monthly = !value;
                                Monthly6 = value;
                              });
                            },
                          ),
                          Text('+6 Monthly',style: TextStyle(fontSize: 20),),
                        ],),
                    ],
                  ),
                ),
                title(content: 'Your signature'),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  child: FlatButton(
                    padding: EdgeInsets.only(left: 0),
                    onPressed: (){
                      showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        backgroundColor: Colors.transparent,
                        builder: (context) => Container(
                          padding: EdgeInsets.only(top: 50, left: 20,right: 20),
                          height: MediaQuery.of(context).size.height * 0.8,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(50.0),
                              topRight: Radius.circular(50.0),
                            ),
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset('images/noun_Sign_2775614.png'),
                                  Text('  Draw Your Signature',style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color: mainColor),)
                                ],
                              ),
                              Container(
                                child: Text('Draw here',style: TextStyle(color: Colors.grey[900]),),
                                alignment: Alignment.center,
                                height: 335,
                                width: double.infinity,
                                margin: EdgeInsets.only(top: 25,bottom: 20),
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.grey[200]),
                              ),
                              bottomFlatButton(title: 'Done',color: mainColor,onpress: (){},),
                            ],
                          ),
                        ),
                      );
                    },
                    child: Row(
                      children: [
                        Container(
                          child: Image.asset('images/Group 260.png',fit: BoxFit.fitWidth,width: 30,),
                          padding: EdgeInsets.all(15),
                          margin: EdgeInsets.only(right: 15),
                          decoration: BoxDecoration(color: Colors.grey[200],borderRadius: BorderRadius.circular(15)),
                        ),
                        Text('draw Your signature',style: TextStyle(fontSize: 20,))
                      ],
                    ),
                  ),
                ),
                Container(margin: EdgeInsets.only(bottom: 20),child: Text('Khaled Mohsen',style: TextStyle(fontSize: 25),)),
                bottomFlatButton(title: 'Create',color: mainColor,onpress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => incidentsReport()),
                  );
                },),
              ],),
            ),
          ],
        ),
      ),
    );
  }
}
