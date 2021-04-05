import 'package:flutter/material.dart';
import 'package:tosafe_v_2/globalElements.dart';
import 'package:tosafe_v_2/widgets/notifiedAppBar.dart';
import 'riskReport.dart';

class createRiskReport_Finally extends StatefulWidget {
  @override
  _createRiskReport_FinallyState createState() => _createRiskReport_FinallyState();
}

class _createRiskReport_FinallyState extends State<createRiskReport_Finally> {
  bool check_1 = false;
  bool check_2 = false;
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
                    'Finally',
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
                  'First aid box',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.only(top: 15,left: 20,right: 20),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height-235,
              child: ListView(
                children: [
                  Container(
                    padding: EdgeInsets.only(right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                              activeColor: mainColor,
                              value: check_1,
                              onChanged: (value) {
                                setState(() {
                                  check_1 = value;
                                  check_2 = !value;
                                });
                              },
                            ),
                            Text('Normal',style: TextStyle(fontSize: 20,),),
                          ],
                        ),
                        Row(children: [
                          Checkbox(
                            activeColor: mainColor,
                            value: check_2,
                            onChanged: (value) {
                              setState(() {
                                check_2 = value;
                                check_1 = !value;
                              });
                            },
                          ),
                          Text('Non - Normal',style: TextStyle(fontSize: 20),),
                        ],)
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 55),
                    padding: EdgeInsets.only(top: 15,right: 15,left: 25,bottom: 15),
                    decoration: BoxDecoration(color: Colors.grey[300],borderRadius: BorderRadius.circular(15)),
                    child: Text('1- First aid box isn\'t available',style: TextStyle(fontSize: 20,),),
                  ),
                  horizontalListView(centerText: 'Take or upload the picture',),
                  inputComment(hint: 'Write your comment',),
                  Container(
                    margin: EdgeInsets.only(right: 120),
                    padding: EdgeInsets.only(top: 15,right: 15,left: 25,bottom: 15),
                    decoration: BoxDecoration(color: Colors.grey[300],borderRadius: BorderRadius.circular(15)),
                    child: Text('2- First aid box empty',style: TextStyle(fontSize: 20,),),
                  ),
                  horizontalListView(centerText: 'Take or upload the picture',),
                  inputComment(hint: 'Write your comment',),
                  bottomFlatButton(title: 'Create',color: mainColor,onpress: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => riskReport()),
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
