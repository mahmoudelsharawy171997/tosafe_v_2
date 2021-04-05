import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:tosafe_v_2/classes/repliesOnReport.dart';
import 'package:tosafe_v_2/globalElements.dart';
import 'package:tosafe_v_2/widgets/groups.dart';
import 'package:tosafe_v_2/widgets/notifiedAppBar.dart';

class monthlyReport extends StatefulWidget {
  @override
  _monthlyReportState createState() => _monthlyReportState();
}


class _monthlyReportState extends State<monthlyReport> {

  @override
  Widget build(BuildContext context) {
    int _counter = 10;
     int counter2=6;
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Monthly Report',
                          style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                      Text(
                        formattedDate,
                        style: TextStyle(fontSize: 20, color: Colors.grey),
                      ),
                    ],
                  ),
                  FlatButton(
                    padding: EdgeInsets.only(right: 0,left: 30),
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        Image.asset('images/Group 17.png',fit : BoxFit.fitHeight,height : 45,),
                        Container(
                          width: 50,
                          height: 53,
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(top: 5),
                          child: Container(
                            width: 22,
                            height: 18,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                color: greenColor,
                                border: Border.all(
                                    color: Colors.white, width: 1)),
                            child: Padding(
                              padding: const EdgeInsets.all(0.0),
                              child: Center(
                                child: Text(
                                  counter2.toString(),
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {
                      repliesOnReport RepliesOnReport=repliesOnReport(formattedDate: formattedDate);
                      RepliesOnReport.showModal(context);
                    },
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 15),
                  height: 50,
                  padding: EdgeInsets.all(15),
                  child: Text(
                    'Firstly',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
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
            Group1WithData(counter: 1, groupTitle: 'Housekeeping (inside - outside)', imageName: 'images/Group1/PurpbmqL5c.png',),
            Group1WithData(counter: 2, groupTitle: 'Pressure gauge', imageName: 'images/Group1/Ssua56C7i5.png',),
            Group1WithData(counter: 3, groupTitle: 'Water tank', imageName: 'images/Group1/Xyo2m1HiRA.png',),
            Group1WithData(counter: 4, groupTitle: 'Pressure test by reel', imageName: 'images/Group1/b4d3DuomR1.png',),
            Group2WithData(counter: 5, groupTitle: 'Fire extinguishers',subTitles: ['Powder','CO2','Foam'],),
            Group1WithData_V2(
              counter: 6,
              groupTitle: 'Fire hose cabinet',
              subtitle1: 'Water',
              subtitle2: 'Foam',
              imageName1: 'images/Group1/6yGOnnKPh3.png',
              imageName2: 'images/Group1/9EeihVu4cO.png',
            ),
            Group1WithData(counter: 7, groupTitle: 'Fire alarm panel', imageName: 'images/Group1/VMRBhVidek.png',),
            Group1WithData(counter: 8, groupTitle: 'Gas alarm panel', imageName: 'images/Group1/YmepbCiUJr.png',),
            Group1WithData_V2(
              counter: 9,
              groupTitle: 'Exit & Emergency light',
              subtitle1: 'Emergency light',
              subtitle2: 'Exit sign',
              imageName1: 'images/Group1/r15rjjEJ2U.png',
              imageName2: 'images/Group1/PQyXtPNJrd.png',
            ),
            Group1WithData(counter: 10, groupTitle: 'Emergency door', imageName: 'images/Group1/j8G9B1gvAR.png',),
            Group1WithData(counter: 11, groupTitle: 'Electrical room - panel', imageName: 'images/Group1/C9Z1krJt8u.png',),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 15,top: 10),
                  height: 50,
                  padding: EdgeInsets.all(15),
                  child: Text(
                    'Secondly',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  decoration: BoxDecoration(
                      color: greenColor,
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(10),
                          topRight: Radius.circular(10))),
                ),
                Text(
                  'Storage Status ',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )
              ],
            ),
            Group2WithData(counter: 1, groupTitle: 'Store / Warehouse stock',subTitles: ['Store stock','Warehouse stock','Title of pic'],),
            Group2WithData(counter: 2, groupTitle: 'Passages / Corridors',subTitles: ['Passages','Corridors','Title of pic'],),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 15,top: 10),
                  height: 50,
                  padding: EdgeInsets.all(15),
                  child: Text(
                    'Finally',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  decoration: BoxDecoration(
                      color: greenColor,
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(10),
                          topRight: Radius.circular(10))),
                ),
                Text(
                  'Housekeeping Status',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )
              ],
            ),
            Group2WithData(counter: 1, groupTitle: 'Housekeeping (inside - outside)',subTitles: ['Inside','Outside','Title of pic'],),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 10,top: 10),
                  padding: EdgeInsets.all(15),
                  child: Text(
                    'End Of Report',
                    style: TextStyle(
                      color: redColor,
                      fontSize: 18,
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: redColor2,
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(20),
                          topRight: Radius.circular(20))),
                ),
                Container(
                  width: 220,
                  height: 60,
                  margin: EdgeInsets.only(bottom: 50),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(17, 169, 157, 0.1),
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('images/noun_review_2287101.png'),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Report Reviwed',style: TextStyle(color: mainColor,fontSize: 18),),
                          Text(formattedDateEndPage,style: TextStyle(color: mainColor,fontSize: 14),),
                        ],
                      ),
                    ],),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

