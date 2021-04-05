import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'createMonthlyReports_1.dart';
import 'package:tosafe_v_2/globalElements.dart';
import 'package:tosafe_v_2/widgets/notifiedAppBar.dart';


class monthly_reports extends StatefulWidget {
  @override
  _monthly_reportsState createState() => _monthly_reportsState();
}

class _monthly_reportsState extends State<monthly_reports> with SingleTickerProviderStateMixin{

  final List<Tab> myTabs = List.generate(
      12, (index) {
    var date = DateTime(now.year, now.month + index, now.day);
    String dateDisplay = DateFormat('yMMM').format(date).toUpperCase();
    return Tab(text: dateDisplay);
  }
  );

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: myTabs.length);
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
                  padding: EdgeInsets.only(left: 20,right: 20),
                  child: Row(
                    children: [
                      Image.asset('images/date.png',),
                      Container(
                          margin: EdgeInsets.only(left: 10),
                          alignment: Alignment.topLeft,
                          child: Text('Monthly Reports',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),))
                    ],
                  ),
                ),
                DefaultTabController(
                    length: 3, // length of tabs
                    initialIndex: 0,
                    child: Column(
                        children: <Widget>[
                      Container(
                        height: 60,
                        margin: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: mainColor2,
                        ),
                        child: TabBar(
                          labelPadding: EdgeInsets.only(left: 5,right: 5),
                          indicator: BoxDecoration(
                            color: mainColor,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          labelStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                          labelColor: Colors.white,
                          unselectedLabelColor: mainColor,
                          tabs: [
                            Tab(text: 'New'),
                            Tab(text: 'Under Review'),
                            Tab(text: 'Done'),
                          ],
                        ),
                      ),
                      Container(
                        color: Colors.grey[100],
                        child: TabBar(
                          indicatorColor: greenColor,
                          labelColor: greenColor,
                          unselectedLabelColor: Colors.grey[700],
                          automaticIndicatorColorAdjustment: true,
                          controller: _tabController,
                          tabs: myTabs,
                          isScrollable: true,
                        ),
                      ),
                      Container(
                          height: MediaQuery.of(context).size.height-265,
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
                                itemCount: underReviewTab.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return underReviewTab[index];
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
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => createMonthlyReports_1()),
                    );
                  },
                  child: Icon(Icons.add,size: 40,),
                ),
              ),
            ],),
        ),
      ),
    );
  }
}











