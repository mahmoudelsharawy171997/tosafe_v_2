import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:tosafe_v_2/classes/dropdownlist.dart';
import 'package:tosafe_v_2/widgets/calendar.dart';
import 'createMaintainanceReport.dart';
import 'package:tosafe_v_2/globalElements.dart';
import 'package:tosafe_v_2/widgets/notifiedAppBar.dart';
class maintainance extends StatefulWidget {
  @override
  _maintainanceState createState() => _maintainanceState();
}

class _maintainanceState extends State<maintainance> {

  CalendarController _calendarController;
  dropdownlist _dropdownlist;
  dropdownlist _dropdownlist2;

  List<ListItem> dropdownItems2 = [
    ListItem(1, "All companies"),
    ListItem(2, "Second Item"),
    ListItem(3, "Third Item"),
    ListItem(4, "Fourth Item")
  ];

  void initState() {
    super.initState();
    _calendarController=CalendarController();
    _dropdownlist=dropdownlist(dropdownItems: dropdownItems);
    _dropdownlist2=dropdownlist(dropdownItems: dropdownItems2);
  }
  @override
  Widget build(BuildContext context) {
    var _counter=10;
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
        body: Container(
          height: double.infinity,
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 20,),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('images/noun_tools.png',),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(left: 10),
                            alignment: Alignment.topLeft,
                            child: Text('Maintainance',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                          ),
                        ),
                        FlatButton(
                          onPressed: (){
                            showModalBottomSheet(
                              context: context,
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              builder: (context) => Container(
                                padding: EdgeInsets.only(top: 40, left: 20,),
                                height: MediaQuery.of(context).size.height * 0.9,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(50.0),
                                    topRight: Radius.circular(50.0),
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(bottom: 15),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Image.asset('images/noun_filter2.png'),
                                          Text(
                                            'Filter',
                                            style: TextStyle(
                                                fontSize: 25,
                                                fontWeight: FontWeight.bold,
                                                color: mainColor),
                                          ),
                                          SizedBox(width: 100,),
                                          Container(
                                            padding: EdgeInsets.fromLTRB(15, 10, 10, 10),
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft: Radius.circular(15),
                                                  topLeft: Radius.circular(15),
                                                ),
                                                color: mainColor2),
                                            child: Row(
                                              children: [
                                                Image.asset('images/noun_reset.png'),
                                                Text(
                                                  '  Reset to defualt',
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      color: mainColor),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(right: 20),
                                      child: Column(
                                        children: [
                                          Container(child: _dropdownlist.build(context,'Branch')),
                                          Container(margin: EdgeInsets.symmetric(vertical: 15),child: _dropdownlist2.build(context,'Company')),
                                          calendar(calendarController: _calendarController),
                                          Container(
                                            width: double.infinity,
                                            margin: EdgeInsets.only(top: 15),
                                            child: FlatButton(
                                                height: 60,
                                                textColor: Colors.white,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(20)),
                                                color: mainColor,
                                                onPressed: () {},
                                                child: Text(
                                                  'Apply',
                                                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                                                )),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                          child: Image.asset('images/noun_filter.png',fit: BoxFit.fitWidth,width: 20,),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20,bottom: 15,top: 5),
                    width: double.infinity,
                    child: Text('All Reports Related To Maintenance',style: TextStyle(fontSize: 20),),
                  ),
                  DefaultTabController(
                      length: 2, // length of tabs
                      initialIndex: 0,
                      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: <Widget>[
                        Container(
                          height: 60,
                          margin: EdgeInsets.only(left: 15,right: 15,bottom: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: mainColor2,
                          ),
                          child: TabBar(
                            indicator: BoxDecoration(
                              color: mainColor,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            labelStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                            labelColor: Colors.white,
                            unselectedLabelColor: mainColor,
                            tabs: [
                              Tab(text: 'New'),
                              Tab(text: 'Done'),
                            ],
                          ),
                        ),
                        Container(margin: EdgeInsets.symmetric(horizontal: 15),child: _dropdownlist.build(context,'Branch')),
                        Container(
                            height: MediaQuery.of(context).size.height-325,
                            margin: EdgeInsets.only(top: 5),
                            child: TabBarView(children: <Widget>[
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: ListView.builder(
                                  itemCount: newTab.length,
                                  itemBuilder: (BuildContext context, int index) {
                                    return newTab[index];
                                  },
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: ListView.builder(
                                  itemCount: doneTab.length,
                                  itemBuilder: (BuildContext context, int index) {
                                    return doneTab[index];
                                  },
                                ),
                              ),
                            ])
                        )
                      ])
                  ),
                ],
              ),
              Positioned(
                bottom: 30,
                right: 30,
                child: FloatingActionButton(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                  ),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => createMaintainanceReport()),
                    );
                  },
                  child: Icon(Icons.add,size: 45,),
                ),
              ),
            ],),
        ),
      ),
    );
  }
}
