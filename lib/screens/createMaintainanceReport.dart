import 'package:flutter/material.dart';
import 'maintainanceReport.dart';
import 'package:tosafe_v_2/widgets/selectDateTime.dart';
import 'package:tosafe_v_2/classes/dropdownlist.dart';
import 'package:tosafe_v_2/globalElements.dart';
import 'package:tosafe_v_2/widgets/notifiedAppBar.dart';


class createMaintainanceReport extends StatefulWidget {
  @override
  _createMaintainanceReportState createState() => _createMaintainanceReportState();
}

class _createMaintainanceReportState extends State<createMaintainanceReport> {
  selectDateTime _selectDateTime=selectDateTime();
  dropdownlist _dropdownlist;
  dropdownlist _dropdownlist2;
  dropdownlist _dropdownlist3;
  dropdownlist _dropdownlist4;


  List<ListItem> dropdownItems2 = [
    ListItem(1, "Type of visit"),
    ListItem(2, "Second Item"),
    ListItem(3, "Third Item"),
    ListItem(4, "Fourth Item")
  ];
  List<ListItem> chooseCategory = [
    ListItem(1, "All categories"),
    ListItem(2, "Second Item"),
    ListItem(3, "Third Item"),
    ListItem(4, "Fourth Item")
  ];
  List<ListItem> chooseItem = [
    ListItem(1, "Product list"),
    ListItem(2, "Second Item"),
    ListItem(3, "Third Item"),
    ListItem(4, "Fourth Item")
  ];

  void initState() {
    super.initState();
    _dropdownlist=dropdownlist(dropdownItems: dropdownItems);
    _dropdownlist2=dropdownlist(dropdownItems: dropdownItems2);
    _dropdownlist3=dropdownlist(dropdownItems: chooseCategory);
    _dropdownlist4=dropdownlist(dropdownItems: chooseItem);
  }
  @override
  int _counter=10;
  int pointer=0;

  List<Widget> items = [];

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
                  Text('Create Maintainance Report',
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
                  title(content: 'Type of visit'),
                  Container(margin: EdgeInsets.symmetric(vertical: 10,),child: _dropdownlist2.build(context,'Choose type of visit')),
                  _selectDateTime,
                  title(content: 'Type of system'),
                  inputComment(hint: 'Write Type Of System',),
                  title(content: 'Problem description'),
                  inputComment(hint: 'Write Problem Description',),
                  title(content: 'Problem solution'),
                  inputComment(hint: 'Write Problem Solution',),
                  title(content: 'Spare parts used'),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20),
                    child: FlatButton(
                      padding: EdgeInsets.only(left: 0),
                      onPressed: (){
                        showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          backgroundColor: Colors.transparent,
                          builder: (BuildContext context){
                            return StatefulBuilder(
                              builder: (BuildContext context, void Function(void Function()) setState) {
                                return Container(
                                  padding: EdgeInsets.only(top: 50, left: 20,right: 20),
                                  height: MediaQuery.of(context).size.height * 0.7,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(50.0),
                                      topRight: Radius.circular(50.0),
                                    ),
                                  ),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Icon(Icons.add,color: mainColor,size: 30,),
                                          Text('  Add new item',style: TextStyle(
                                              fontSize: 30,
                                              fontWeight: FontWeight.bold,
                                              color: mainColor),)
                                        ],
                                      ),
                                      Container(margin: EdgeInsets.symmetric(vertical: 10,),child: _dropdownlist3.build(context,'Choose category')),
                                      Container(margin: EdgeInsets.symmetric(vertical: 10,),child: _dropdownlist4.build(context,'Choose item')),
                                      Container(
                                        margin: EdgeInsets.only(top: 30,bottom: 40),
                                        width: 200,
                                        alignment: Alignment.center,
                                        padding: EdgeInsets.only(left: 25,right: 10),
                                        child: Row(
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(color: Colors.grey[400],borderRadius: BorderRadius.circular(15)),
                                              child: IconButton(
                                                icon: Icon(Icons.remove,size: 30,color: Colors.white,),
                                                onPressed: () {
                                                  setState(() {
                                                    pointer--;
                                                    if(pointer<0)
                                                      pointer=0;
                                                  });
                                                },
                                              ),
                                            ),
                                            Expanded(child: Center(child: Text(pointer.toString(),style: TextStyle(color: mainColor,fontSize: 30,fontWeight: FontWeight.bold)))),
                                            Container(
                                              padding: EdgeInsets.all(0),
                                              decoration: BoxDecoration(color: Colors.grey[900],borderRadius: BorderRadius.circular(15)),
                                              child: IconButton(
                                                padding: EdgeInsets.all(0),
                                                icon: Icon(Icons.add,size: 30,color: Colors.white,),
                                                onPressed: () {
                                                  setState(() {
                                                    pointer++;
                                                    if(pointer<0)
                                                      pointer=0;
                                                  });
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: double.infinity,
                                        margin: EdgeInsets.only(bottom: 20),
                                        child: FlatButton(
                                            height: 60,
                                            textColor: Colors.white,
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(20)),
                                            color: mainColor,
                                            onPressed: () {
                                              int counter=0;
                                              setState(() {
                                                items.add(
                                                  Row(
                                                    children: [
                                                      Container(
                                                        margin: EdgeInsets.only(right: 10),
                                                        height: 10,
                                                        width: 10,
                                                        decoration: BoxDecoration(
                                                          color: mainColor,
                                                          shape: BoxShape.circle,
                                                        ),
                                                      ),
                                                      Text('Item Name',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                                                      Expanded(
                                                        child: Container(
                                                          padding: EdgeInsets.only(left: 25,right: 10),
                                                          child: Row(
                                                            children: [
                                                              Container(
                                                                decoration: BoxDecoration(color: Colors.grey[400],borderRadius: BorderRadius.circular(15)),
                                                                child: IconButton(
                                                                  icon: Icon(Icons.remove,size: 30,),
                                                                  onPressed: () {
                                                                    setState(() {
                                                                      counter--;
                                                                      if(counter<0)
                                                                        counter=0;
                                                                    });
                                                                  },
                                                                ),
                                                              ),
                                                              Expanded(child: Center(child: Text(counter.toString(),style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)))),
                                                              Container(
                                                                padding: EdgeInsets.all(0),
                                                                decoration: BoxDecoration(color: Colors.grey[900],borderRadius: BorderRadius.circular(15)),
                                                                child: IconButton(
                                                                  padding: EdgeInsets.all(0),
                                                                  icon: Icon(Icons.add,size: 30,color: Colors.white,),
                                                                  onPressed: () {
                                                                    setState(() {
                                                                      counter++;
                                                                      if(counter<0)
                                                                        counter=0;
                                                                    });
                                                                  },
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      )
                                                    ],),);
                                              });
                                            },
                                            child: Text(
                                              'Add',
                                              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                                            )),
                                      ),

                                    ],
                                  ),
                                );
                              },
                            );
                          }
                        );
                      },
                      child: Row(
                        children: [
                          Icon(Icons.add_box,color: mainColor,size: 55,),
                          Text('  Add New item',style: TextStyle(fontSize: 20,))
                        ],
                      ),
                    ),
                  ),



                  Container(
                    height: 200,
                    child: ListView.builder(

                      itemCount: items.length,
                      itemBuilder: (context, index) {
                        return Dismissible(
                          key: Key(items[index].toString()),
                          child: ListTile(
                            title: items[index],
                            trailing: Container(
                              decoration: BoxDecoration(color: redColor2,borderRadius: BorderRadius.circular(15)),
                              child: IconButton(
                                icon: Icon(Icons.delete,color: redColor,size: 30,),
                                onPressed: () {
                                  setState(() {
                                  items.removeAt(index);
                                  });
                                },
                              ),
                            ),
                          ),
                          onDismissed: (direction) {
                            setState(() {
                              items.removeAt(index);
                            });
                          },
                        );
                      },
                    ),
                  ),

                  RaisedButton(
                    child: Text("Insert"),
                    onPressed: () {
                      int counter=0;
                      setState(() {
                        items.add(
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 10),
                                height: 10,
                                width: 10,
                                decoration: BoxDecoration(
                                  color: mainColor,
                                  shape: BoxShape.circle,
                                ),
                              ),
                              Text('Item Name',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(color: Colors.grey[400],borderRadius: BorderRadius.circular(15)),
                                        child: FloatingActionButton(
                                          mini: true,
                                          backgroundColor: Colors.grey[400],
                                          elevation: 0,
                                          child: Icon(Icons.remove,size: 25,),
                                          onPressed: () {
                                            this.setState(() {
                                              counter--;
                                              if(counter<0)
                                                counter=0;
                                            });
                                          },
                                        ),
                                      ),
                                      Expanded(child: Center(child: Text(counter.toString(),style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)))),
                                      Container(
                                        padding: EdgeInsets.all(0),
                                        decoration: BoxDecoration(color: Colors.grey[900],borderRadius: BorderRadius.circular(15)),
                                        child: FloatingActionButton(
                                          mini: true,
                                          elevation: 0,
                                          backgroundColor: Colors.black,
                                          child: Icon(Icons.add,size: 25,color: Colors.white,),
                                          onPressed: () {
                                            this.setState(() {
                                              counter++;
                                              if(counter<0)
                                                counter=0;
                                            });
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],),);
                      });
                    },
                  ),
                  bottomFlatButton(title: 'Create',color: mainColor,onpress: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => maintainanceReport()),
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
