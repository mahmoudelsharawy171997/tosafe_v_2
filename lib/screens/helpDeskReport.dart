import 'package:flutter/material.dart';
import 'package:tosafe_v_2/globalElements.dart';
import 'package:tosafe_v_2/widgets/notifiedAppBar.dart';

class helpDeskReport extends StatefulWidget {
  @override
  _helpDeskReportState createState() => _helpDeskReportState();
}

class _helpDeskReportState extends State<helpDeskReport> {

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
                      Text('Help Desk Report',
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
                  title(content: 'The branch'),
                  contentStyle1(content: 'Branch name',),
                  title(content: 'Details of report'),
                  contentStyle2(content: 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to ',),
                  title(content: 'The entity'),
                  contentStyle1(content: 'Technology Center 1',),
                  title(content: 'Pictures and videos'),
                  horizontalListViewWithdata(),

                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(top: 20),
                    child: FlatButton(
                        height: 60,
                        textColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        color: Color.fromRGBO(243, 24, 77, 1),
                        onPressed: () {
                          cancelReport(context);
                        },
                        child: Text(
                          'Cancel Report',
                          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                        )),
                  ),
                  Container(
                    width: double.infinity,

                    margin: EdgeInsets.only(top: 20,bottom: 20),
                    child: FlatButton(
                        height: 60,
                        textColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        color: Colors.grey[900],
                        onPressed: () {
                          endReport(context);
                        },
                        child: Text(
                          'End Report',
                          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



