import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tosafe_v_2/classes/title.dart';
import 'package:tosafe_v_2/globalElements.dart';
import 'package:tosafe_v_2/widgets/notifiedAppBar.dart';

class incidentsReport extends StatelessWidget {

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
          padding: EdgeInsets.symmetric(horizontal: 20),
          children: [
            Container(
              height: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Incidents Report',
                      style:
                      TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                  Text(
                    formattedDate,
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                ],
              ),
            ),
            title(content: 'Branch name'),
            contentStyle(content: 'Branch name',style: style1,edgeInsets: edgeInsets1,),
            title(content: 'Title'),
            contentStyle(content: 'Title of incident',style: style1,edgeInsets: edgeInsets1,),
            title(content: 'I am reporting about'),
            contentStyle(content: 'Injury',style: style1,edgeInsets: edgeInsets1,),
            title(content: 'Have you told your manager about this Incident ?'),
            contentStyle(content: 'Yes',style: style1,edgeInsets: edgeInsets1,),
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
            title(content: 'Names of witnesses ( If any )'),
            contentStyle(content: 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using.',style: style2,edgeInsets: edgeInsets2,),
            title(content: 'Where exactly , did it happen ?'),
            contentStyle(content: 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using.',style: style2,edgeInsets: edgeInsets2,),
            title(content: 'What were you doing at the time ? '),
            contentStyle(content: 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using.',style: style2,edgeInsets: edgeInsets2,),
            title(content: 'Provide a detailed descriptions of incident'),
            contentStyle(content: 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it ',style: style2,edgeInsets: edgeInsets2,),
            title(content: 'What could have been done to prevent this incident from happening ? '),
            contentStyle(content: 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using.',style: style2,edgeInsets: edgeInsets2,),
            title(content: 'What was your immediate action when this incident happened ?'),
            contentStyle(content: 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using.',style: style2,edgeInsets: edgeInsets2,),
            title(content: 'Did anyone suffer a injury resulting from this incident ? '),
            contentStyle(content: 'Yes',style: style1,edgeInsets: edgeInsets1,),
            title(content: 'Chance of the near miss , incident or accident recurring'),
            contentStyle(content: 'One off',style: style1,edgeInsets: edgeInsets1,),
            title(content: 'Your signature'),
            Container(margin: EdgeInsets.only(bottom: 20,top: 20),child: Text('Khaled Mohsen',style: TextStyle(fontSize: 25),)),
            bottomFlatButton(title: 'Cancel Report',color: redColor,onpress: () {
              cancelReport(context);
            },),
            bottomFlatButton(title: 'End Report',color: Colors.grey[900],onpress: () {
              endReport(context);
            },),
          ],
        ),
      ),
    );
  }
}


