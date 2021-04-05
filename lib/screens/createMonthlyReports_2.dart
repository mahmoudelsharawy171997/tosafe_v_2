import 'package:flutter/material.dart';
import 'package:tosafe_v_2/widgets/groups.dart';
import 'createMonthlyReports_3.dart';
import 'package:tosafe_v_2/globalElements.dart';
import 'package:tosafe_v_2/widgets/notifiedAppBar.dart';

class createMonthlyReports_2 extends StatefulWidget {
  @override
  _createMonthlyReports_2State createState() => _createMonthlyReports_2State();
}

class _createMonthlyReports_2State extends State<createMonthlyReports_2> {
  @override
  Widget build(BuildContext context) {
    int _counter = 10;
    bool valuesecond = false;
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
                  Text('Create Monthly Report',
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
                  'Storage Status',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )
              ],
            ),
            Group2(
              counter: 1,
              groupTitle: 'Store / Warehouse stock',
              subTitles: ['Store stock','Warehouse stock','Title of pic'],
            ),
            Group2(
              counter: 2,
              groupTitle: 'Passages / Corridors',
              subTitles: ['Title of pic','Title of pic','Title of pic'],
            ),
            Container(
              margin: EdgeInsets.only(right: 20,left: 20,top: 10),
              child: bottomFlatButton(title: 'Next',color: mainColor,onpress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => createMonthlyReports_3()),
                );
              },),
            ),
          ],
        ),
      ),
    );
  }
}

