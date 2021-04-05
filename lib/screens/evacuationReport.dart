import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tosafe_v_2/globalElements.dart';
import 'package:tosafe_v_2/widgets/notifiedAppBar.dart';

class evacuationReport extends StatefulWidget {
  @override
  _evacuationReportState createState() => _evacuationReportState();
}

void deleteEmployee(context, int Id, String name){

  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder: (context) => Container(
      padding: EdgeInsets.only(top: 40, bottom: 20, left: 20,right: 20),
      height: MediaQuery.of(context).size.height * 0.45,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50.0),
          topRight: Radius.circular(50.0),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.delete,color: redColor,size: 30,),
              Text('  Delete Employe',style: TextStyle(color: redColor,fontSize: 30,),),
            ],
          ),
          Text('Are you sure to delete this employe ?',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 20),
                child: Image.asset('images/noun_Employee.png'),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name,style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
                    RichText(
                      text: TextSpan(
                        text: 'ID  ',
                        style: TextStyle(color: Colors.grey[500],fontSize: 20,fontWeight: FontWeight.bold,height: 1.5),
                        children: <TextSpan>[
                          TextSpan(text: Id.toString(), style: TextStyle(color: mainColor)),
                        ],
                      ),
                    ),
                  ],),
              ),
            ],
          ),
          bottomFlatButton(title: 'Delete',color: redColor,onpress: (){},),
        ],
      ),
    ),
  );
}

void cancelReport(context){
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder: (context) => Container(
      padding: EdgeInsets.only(top: 40, bottom: 20, left: 20,right: 20),
      height: MediaQuery.of(context).size.height * 0.45,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50.0),
          topRight: Radius.circular(50.0),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Cancel Report',style: TextStyle(color: redColor,fontSize: 30,),),
          Text('Are you sure to cancel this report ?',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
          Text('Training report',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
          Text('Branch name',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: mainColor),),
          Text(formattedDate,),
          bottomFlatButton(title: 'Cancel',color: redColor,onpress: (){},),
        ],
      ),
    ),
  );
}

void endReport(context){
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder: (context) => Container(
      padding: EdgeInsets.only(top: 40, bottom: 20, left: 20,right: 20),
      height: MediaQuery.of(context).size.height * 0.45,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50.0),
          topRight: Radius.circular(50.0),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('End Report',style: TextStyle(color: mainColor,fontSize: 30,),),
          Text('Are you sure to end this report ?',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
          Text('Training report',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
          Text('Branch name',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: mainColor),),
          Text(formattedDate,),
          bottomFlatButton(title: 'End',color: Colors.grey[900],onpress: (){},),
        ],
      ),
    ),
  );
}

class _evacuationReportState extends State<evacuationReport> {
  @override
  Widget build(BuildContext context) {
    String paragraph='It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)';
    int _counter=10;
    int id=188;
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
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: ListView(

            children: [
              Text('Evacuation Report',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
              Text('Branch name',style: TextStyle(height: 2,fontSize: 20,color: mainColor,fontWeight: FontWeight.bold),),
              Text(formattedDate, style: TextStyle(height: 2,fontSize: 18),),
              Container(
                margin: EdgeInsets.symmetric(vertical: 15),
                padding: EdgeInsets.only(bottom: 10,top: 10,right: 25,left: 25),
                decoration: BoxDecoration(color: mainColor2,borderRadius: BorderRadius.circular(10)),
                child: Text('The Date',style: TextStyle(fontSize: 18,color: mainColor,fontWeight: FontWeight.bold),),
              ),
              Row(
                children: [
                  Image.asset('images/noun_calender_2.png'),
                  Text('   $formattedDate')
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 15),
                padding: EdgeInsets.only(bottom: 10,top: 10,right: 25,left: 25),
                decoration: BoxDecoration(color: mainColor2,borderRadius: BorderRadius.circular(10)),
                child: Text('Details of report',style: TextStyle(fontSize: 18,color: mainColor,fontWeight: FontWeight.bold),),
              ),
              Text(paragraph,style: TextStyle(fontSize: 18,height: 1.2),),
              Container(
                margin: EdgeInsets.only(top: 15),
                padding: EdgeInsets.only(bottom: 10,top: 10,right: 25,left: 25),
                decoration: BoxDecoration(color: mainColor2,borderRadius: BorderRadius.circular(10)),
                child: Text('Employee list',style: TextStyle(fontSize: 18,color: mainColor,fontWeight: FontWeight.bold),),
              ),
              employeeItem(Id: id,name: 'Khaled Mohsen',),
              employeeItem(Id: id,name: 'Taher Ellban',),
              employeeItem(Id: id,name: 'Ayman Ramy',),
              Container(
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
      ),
    );
  }
}

class employeeItem extends StatelessWidget {
  employeeItem({@required this.Id, @required this.name,});

  final int Id;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey[500],width: 0.5))),
      margin: EdgeInsets.only(top: 15,),
      padding: EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: 10),
            child: Image.asset('images/noun_Employee.png'),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name,style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
                RichText(
                  text: TextSpan(
                    text: 'ID  ',
                    style: TextStyle(color: Colors.grey[500],fontSize: 20,fontWeight: FontWeight.bold,height: 1.5),
                    children: <TextSpan>[
                      TextSpan(text: Id.toString(), style: TextStyle(color: mainColor)),
                    ],
                  ),
                ),
              ],),
          ),
          GestureDetector(
            onTap: (){
              deleteEmployee(context,Id,name);
            },
            child: Container(
              decoration: BoxDecoration(color: redColor2,borderRadius: BorderRadius.circular(15)),
              child: IconButton(
                icon: Icon(Icons.delete,color: redColor,size: 30,), onPressed: () {  },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
