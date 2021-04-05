import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:tosafe_v_2/classes/horizontalListViewWithdata.dart';
import 'package:tosafe_v_2/classes/repliesOnReport.dart';
import 'package:tosafe_v_2/classes/subTitle.dart';
import 'package:tosafe_v_2/classes/title.dart';
import 'package:tosafe_v_2/globalElements.dart';
import 'package:tosafe_v_2/widgets/notifiedAppBar.dart';

class riskReport extends StatefulWidget {
  @override
  _riskReportState createState() => _riskReportState();
}

class _riskReportState extends State<riskReport> {

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
                      Text('Risk Report',
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
            Container(
              padding: EdgeInsets.only(top: 15,left: 20,right: 20,bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                title(content: 'Pump set'),
                Text('Normal',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,height: 2.2),),
                pictureWithData(imageName: 'images/Group1/PurpbmqL5c.png',),
                title(content: 'Fire alarm control panel'),
                Text('Non - Normal',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,height: 2.2),),
                subTitle(content: '1- Fire alarm panel',),
                horizontalListViewWithdata(),
                subTitle(content: '2- Trouble  (yellow led)',),
                horizontalListViewWithdata(),
                subTitle(content: '3-  fire ( red led )',),
                horizontalListViewWithdata(),
                title(content: 'Fire house cabinet'),
                Text('Normal',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,height: 2.2),),
                pictureWithData(imageName: 'images/Group1/PurpbmqL5c.png',),
                title(content: 'Fire extinguishers'),
                Text('Normal',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,height: 2.2),),
                pictureWithData(imageName: 'images/Group1/PurpbmqL5c.png',),
                title(content: 'Exhaust fan'),
                Text('Normal',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,height: 2.2),),
                pictureWithData(imageName: 'images/Group1/PurpbmqL5c.png',),
                title(content: 'Emergency doors'),
                Text('Normal',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,height: 2.2),),
                pictureWithData(imageName: 'images/Group1/PurpbmqL5c.png',),
                title(content: 'Exit & Emergency light'),
                Text('Normal',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,height: 2.2),),
                pictureWithData(imageName: 'images/Group1/PurpbmqL5c.png',),
              ],),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 15),
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
                  'Electrical Hazards',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.only(left: 20,right: 20,bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Normal',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,height: 2.2),),
                  pictureWithData(imageName: 'images/Group1/PurpbmqL5c.png',),
                ],),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 15),
                  height: 50,
                  padding: EdgeInsets.all(15),
                  child: Text(
                    'Third',
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
                  'Stocking Status ',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.only(left: 20,right: 20,bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Normal',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,height: 2.2),),
                  pictureWithData(imageName: 'images/Group1/PurpbmqL5c.png',),
                ],),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 15),
                  height: 50,
                  padding: EdgeInsets.all(15),
                  child: Text(
                    'Fourthly',
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
                  'House keeping',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.only(left: 20,right: 20,bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Normal',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,height: 2.2),),
                  pictureWithData(imageName: 'images/Group1/PurpbmqL5c.png',),
                ],),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 15),
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
                  'First aid box',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.only(left: 20,right: 20,bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Non - Normal',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,height: 2.2),),
                  subTitle(content: '1- First aid box isn\'t available',),
                  horizontalListViewWithdata(),
                  subTitle(content: '2- First aid box empty',),
                  horizontalListViewWithdata(),
                ],),
            ),
            Container(
              margin: EdgeInsets.only(right: 250,bottom: 10,top: 10),
              width: double.infinity/2,
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
              height: 60,
              margin: EdgeInsets.only(right: 220,bottom: 50),
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
        ),
      ),
    );
  }
}



