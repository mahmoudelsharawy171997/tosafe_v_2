import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tosafe_v_2/classes/title.dart';
import 'package:tosafe_v_2/globalElements.dart';
import 'package:tosafe_v_2/widgets/notifiedAppBar.dart';

class maintainanceReport extends StatefulWidget {
  @override
  _maintainanceReportState createState() => _maintainanceReportState();
}

class _maintainanceReportState extends State<maintainanceReport> {

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
                      Text('Maintainance Report',
                          style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                      Text(
                        formattedDate,
                        style: TextStyle(fontSize: 20, color: Colors.grey),
                      ),
                    ],
                  ),
                  FloatingActionButton(
                    elevation: 0,
                    backgroundColor: Colors.white,
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
                              padding: EdgeInsets.all(0.0),
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
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  title(content: 'Select the branch'),
                  contentStyle(content: 'Branch name',style: style1,edgeInsets: edgeInsets1,),
                  title(content: 'Type of visit'),
                  contentStyle(content: 'Type of visit',style: style1,edgeInsets: edgeInsets1,),
                  title(content: 'Select time and date'),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(children: [
                          Image.asset('images/noun_Time.png'),
                          Text(DateFormat('    h:mm a').format(DateTime.now()),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),
                        ],),
                        Row(children: [
                          Image.asset('images/noun_calender_2.png'),
                          Text(DateFormat('    dd-MM-yyyy  ').format(DateTime.now()),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),
                        ],),
                      ],
                    ),
                  ),
                  title(content: 'Type of system'),
                  contentStyle(content: 'It is a long established fact that a reader will ',style: style2,edgeInsets: edgeInsets2,),
                  title(content: 'Problem description'),
                  contentStyle(content: 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop.',style: style2,edgeInsets: edgeInsets2,),
                  title(content: 'Problem solution'),
                  contentStyle(content: 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using.',style: style2,edgeInsets: edgeInsets2,),
                  title(content: 'Spare parts used'),

                ],
              ),
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



