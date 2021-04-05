import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tosafe_v_2/classes/horizontalListView.dart';
import 'package:tosafe_v_2/classes/subTitle.dart';
import 'package:tosafe_v_2/classes/title.dart';
import 'package:tosafe_v_2/globalElements.dart';
import 'package:tosafe_v_2/widgets/notifiedAppBar.dart';
import 'createRiskReport_2.dart';

class createRiskReport_1 extends StatefulWidget {
  @override
  _createRiskReport_1State createState() => _createRiskReport_1State();
}

class _createRiskReport_1State extends State<createRiskReport_1> {
  bool pumpSet_1 = false;
  bool pumpSet_2 = false;
  bool fireAlarm_1 = false;
  bool fireAlarm_2 = false;
  bool fireHouse_1 = false;
  bool fireHouse_2 = false;
  bool fireExtinguishers_1 = false;
  bool fireExtinguishers_2 = false;
  bool exhaustFan_1 = false;
  bool exhaustFan_2 = false;
  bool emergencyDoors_1 = false;
  bool emergencyDoors_2 = false;
  bool exit_1 = false;
  bool exit_2 = false;
  @override
  Widget build(BuildContext context) {
    int _counter=10;
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
                  Text('Create Risk Report',
                      style:
                      TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                  Text(
                    formattedDateHeaderPage,
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 15),
                  height: 50,
                  padding: EdgeInsets.only(top: 15,right: 30,left: 30,bottom: 10),
                  child: Text(
                    'Firstly',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  decoration: BoxDecoration(
                      color: greenColor,
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(10),
                          topRight: Radius.circular(10))),
                ),
                Text(
                  'Safety System Status',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.only(top: 15,left: 20,right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  title(content: 'Pump set',),
                  Container(
                padding: EdgeInsets.only(right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(
                        activeColor: mainColor,
                        value: pumpSet_1,
                        onChanged: (value) {
                          setState(() {
                            pumpSet_1 = value;
                            pumpSet_2 = !value;
                          });
                        },
                      ),
                      Text('Normal',style: TextStyle(fontSize: 20,),),
                    ],
                  ),
                  Row(children: [
                    Checkbox(
                      activeColor: mainColor,
                      value: pumpSet_2,
                      onChanged: (value) {
                        setState(() {
                          pumpSet_2 = value;
                          pumpSet_1 = !value;
                        });
                      },
                    ),
                    Text('Non - Normal',style: TextStyle(fontSize: 20),),
                  ],)
                ],
              ),
            ),
                  pictureAndComment(),
                  title(content: 'Fire alarm control panel',),
                  Container(
                    padding: EdgeInsets.only(right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                              activeColor: mainColor,
                              value: fireAlarm_1,
                              onChanged: (value) {
                                setState(() {
                                  fireAlarm_1 = value;
                                  fireAlarm_2 = !value;
                                });
                              },
                            ),
                            Text('Normal',style: TextStyle(fontSize: 20,),),
                          ],
                        ),
                        Row(children: [
                          Checkbox(
                            activeColor: mainColor,
                            value: fireAlarm_2,
                            onChanged: (value) {
                              setState(() {
                                fireAlarm_2 = value;
                                fireAlarm_1 = !value;
                              });
                            },
                          ),
                          Text('Non - Normal',style: TextStyle(fontSize: 20),),
                        ],)
                      ],
                    ),
                  ),
                  subTitle(content: '1- Fire alarm panel',),
                  horizontalListView(centerText: 'Take or upload the picture',),
                  inputComment(hint: 'Write your comment',),
                  Container(
                    margin: EdgeInsets.only(right: 120,bottom: 10,top: 10),
                    padding: EdgeInsets.only(top: 10,right: 15,left: 25,bottom: 10),
                    decoration: BoxDecoration(color: Colors.grey[300],borderRadius: BorderRadius.circular(15)),
                    child: Text('2- Trouble  (yellow led)',style: TextStyle(fontSize: 20,),),
                  ),
                  horizontalListView(centerText: 'Take or upload the picture',),
                  inputComment(hint: 'Write your comment',),
                  subTitle(content: '3-  fire ( red led )',),
                  horizontalListView(centerText: 'Take or upload the picture',),
                  inputComment(hint: 'Write your comment',),
                  title(content: 'Fire house cabinet',),
                  Container(
                    padding: EdgeInsets.only(right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                              activeColor: mainColor,
                              value: fireHouse_1,
                              onChanged: (value) {
                                setState(() {
                                  fireHouse_1 = value;
                                  fireHouse_2 = !value;
                                });
                              },
                            ),
                            Text('Normal',style: TextStyle(fontSize: 20,),),
                          ],
                        ),
                        Row(children: [
                          Checkbox(
                            activeColor: mainColor,
                            value: fireHouse_2,
                            onChanged: (value) {
                              setState(() {
                                fireHouse_2 = value;
                                fireHouse_1 = !value;
                              });
                            },
                          ),
                          Text('Non - Normal',style: TextStyle(fontSize: 20),),
                        ],)
                      ],
                    ),
                  ),
                  pictureAndComment(),
                  title(content: 'Fire extinguishers',),
                  Container(
                    padding: EdgeInsets.only(right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                              activeColor: mainColor,
                              value: fireExtinguishers_1,
                              onChanged: (value) {
                                setState(() {
                                  fireExtinguishers_1 = value;
                                  fireExtinguishers_2 = !value;
                                });
                              },
                            ),
                            Text('Normal',style: TextStyle(fontSize: 20,),),
                          ],
                        ),
                        Row(children: [
                          Checkbox(
                            activeColor: mainColor,
                            value: fireExtinguishers_2,
                            onChanged: (value) {
                              setState(() {
                                fireExtinguishers_2 = value;
                                fireExtinguishers_1 = !value;
                              });
                            },
                          ),
                          Text('Non - Normal',style: TextStyle(fontSize: 20),),
                        ],)
                      ],
                    ),
                  ),
                  pictureAndComment(),
                  title(content: 'Exhaust fan',),
                  Container(
                    padding: EdgeInsets.only(right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                              activeColor: mainColor,
                              value: exhaustFan_1,
                              onChanged: (value) {
                                setState(() {
                                  exhaustFan_1 = value;
                                  exhaustFan_2 = !value;
                                });
                              },
                            ),
                            Text('Normal',style: TextStyle(fontSize: 20,),),
                          ],
                        ),
                        Row(children: [
                          Checkbox(
                            activeColor: mainColor,
                            value: exhaustFan_2,
                            onChanged: (value) {
                              setState(() {
                                exhaustFan_2 = value;
                                exhaustFan_1 = !value;
                              });
                            },
                          ),
                          Text('Non - Normal',style: TextStyle(fontSize: 20),),
                        ],)
                      ],
                    ),
                  ),
                  pictureAndComment(),
                  title(content: 'Emergency doors',),
                  Container(
                    padding: EdgeInsets.only(right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                              activeColor: mainColor,
                              value: emergencyDoors_1,
                              onChanged: (value) {
                                setState(() {
                                  emergencyDoors_1 = value;
                                  emergencyDoors_2 = !value;
                                });
                              },
                            ),
                            Text('Normal',style: TextStyle(fontSize: 20,),),
                          ],
                        ),
                        Row(children: [
                          Checkbox(
                            activeColor: mainColor,
                            value: emergencyDoors_2,
                            onChanged: (value) {
                              setState(() {
                                emergencyDoors_2 = value;
                                emergencyDoors_1 = !value;
                              });
                            },
                          ),
                          Text('Non - Normal',style: TextStyle(fontSize: 20),),
                        ],)
                      ],
                    ),
                  ),
                  pictureAndComment(),
                  title(content: 'Exit & Emergency light',),
                  Container(
                    padding: EdgeInsets.only(right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                              activeColor: mainColor,
                              value: exit_1,
                              onChanged: (value) {
                                setState(() {
                                  exit_1 = value;
                                  exit_2 = !value;
                                });
                              },
                            ),
                            Text('Normal',style: TextStyle(fontSize: 20,),),
                          ],
                        ),
                        Row(children: [
                          Checkbox(
                            activeColor: mainColor,
                            value: exit_2,
                            onChanged: (value) {
                              setState(() {
                                exit_2 = value;
                                exit_1 = !value;
                              });
                            },
                          ),
                          Text('Non - Normal',style: TextStyle(fontSize: 20),),
                        ],)
                      ],
                    ),
                  ),
                  pictureAndComment(),
                  bottomFlatButton(title: 'Next',color: mainColor,onpress: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => createRiskReport_2()),
                    );
                  },),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}



