import 'package:flutter/material.dart';
import 'helpDeskReport.dart';
import 'package:tosafe_v_2/classes/dropdownlist.dart';
import 'package:tosafe_v_2/globalElements.dart';
import 'package:tosafe_v_2/widgets/notifiedAppBar.dart';
class createHelpDeskReport extends StatefulWidget {
  @override
  _createHelpDeskReportState createState() => _createHelpDeskReportState();
}

class _createHelpDeskReportState extends State<createHelpDeskReport> {
  dropdownlist _dropdownlist;
  dropdownlist _dropdownlist2;


  List<ListItem> theEntity = [
    ListItem(1, "Technology Center 1"),
    ListItem(2, "Second Item"),
    ListItem(3, "Third Item"),
    ListItem(4, "Fourth Item")
  ];

  void initState() {
    super.initState();
    _dropdownlist=dropdownlist(dropdownItems: dropdownItems);
    _dropdownlist2=dropdownlist(dropdownItems: theEntity);
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
                  Text('Create Help Desk Report',
                      style:
                      TextStyle(fontSize: 29, fontWeight: FontWeight.bold)),
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
                  title(content: 'Details of report'),
                  inputComment(hint: 'Write details here',),
                  title(content: 'Select the entity'),
                  Container(margin: EdgeInsets.symmetric(vertical: 10,),child: _dropdownlist2.build(context,'The entity')),
                  title(content: 'Select the entity'),
                  horizontalListView(centerText: 'Take or upload the picture or video',),
                  inputComment(hint: 'Write your comment',),
                  bottomFlatButton(title: 'Create',color: mainColor,onpress: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => helpDeskReport()),
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
