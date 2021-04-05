import 'package:flutter/material.dart';
import 'package:tosafe_v_2/widgets/groups.dart';
import 'createMonthlyReports_2.dart';
import 'package:tosafe_v_2/globalElements.dart';
import 'package:tosafe_v_2/widgets/notifiedAppBar.dart';

class createMonthlyReports_1 extends StatefulWidget {
  @override
  _createMonthlyReports_1State createState() => _createMonthlyReports_1State();
}

class _createMonthlyReports_1State extends State<createMonthlyReports_1> {
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
                  height: 53,
                  width: 120,
                  alignment: Alignment.center,
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
            Group1(
              counter: 1,
              groupTitle: 'Pump set panel',
            ),
            Group1(
              counter: 2,
              groupTitle: 'Pressure gauge',
            ),
            Group1(
              counter: 3,
              groupTitle: 'Water tank',
            ),
            Group1(
              counter: 4,
              groupTitle: 'Pressure test by reel',
            ),
            Group2(
              counter: 5,
              groupTitle: 'Fire extinguishers',
              subTitles: ['Powder','CO2','Foam'],
            ),
            Group1_V2(
              counter: 6,
              groupTitle: 'Fire hose cabinet',
              subTitle1: 'Water',
              subTitle2: 'Foam',
            ),
            Group1(
              counter: 7,
              groupTitle: 'Fire alarm panel',
            ),
            Group1(
              counter: 8,
              groupTitle: 'Gas alarm panel',
            ),
            Container(
              padding: EdgeInsets.only(left: 10,top: 10),
              alignment: Alignment.center,
              child: Row(
                children: [
                  Transform.scale(
                     scale: 1.4,
                          child: Checkbox(
                            value: valuesecond,
                            onChanged: (bool value) {
                              setState(() {
                                valuesecond = value;
                              });
                            },
                          ),
                        ),
                  Text('Not available',style: TextStyle(fontSize: 20),),
                ],
              ),
            ),
            Group1_V2(
              counter: 9,
              groupTitle: 'Exit & Emergency light',
              subTitle1: 'Emergency light',
              subTitle2: 'Exit sign',
            ),
            Group1(
              counter: 10,
              groupTitle: 'Emergency door',
            ),
            Group1(
              counter: 11,
              groupTitle: 'Electrical room - panel',
            ),
            Container(
              margin: EdgeInsets.only(right: 20,left: 20,top: 10),
              child: bottomFlatButton(title: 'Next',color: mainColor,onpress: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => createMonthlyReports_2()),
                );
              },),
            ),
          ],
        ),
      ),
    );
  }
}

