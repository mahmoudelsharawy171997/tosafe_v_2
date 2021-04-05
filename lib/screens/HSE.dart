import 'package:flutter/material.dart';
import 'Monthly_Reports.dart';
import 'Training.dart';
import 'createRiskReport_1.dart';
import 'evacuation.dart';
import 'firstAid.dart';
import 'incidents.dart';
import 'package:tosafe_v_2/globalElements.dart';
import 'package:tosafe_v_2/widgets/notifiedAppBar.dart';
class HSE extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _counter = 10;
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
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('HSE',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              Text('Health and safety Reports',style: TextStyle(fontSize: 20,color: Colors.grey[700]),),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20,),
                  child: GridView.count(
                    childAspectRatio: 8/9,
                    shrinkWrap: true,
                    crossAxisCount: 2,
                    crossAxisSpacing: 3.0,
                    mainAxisSpacing: 8.0,
                    children: <Widget>[
                      reusableCard(BGimage: Image.asset('images/1.png',height: 80,),title: 'Monthly Reports',onpress: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => monthly_reports()),
                        );
                      },),
                      reusableCard(BGimage: Image.asset('images/2.png',height: 80,),title: 'Risks',onpress: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => createRiskReport_1()),
                        );
                      },),
                      reusableCard(BGimage: Image.asset('images/3.png',height: 80,),title: 'Training',onpress: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => training()),
                        );
                      },),
                      reusableCard(BGimage: Image.asset('images/4.png',height: 80,),title: 'Incidents',onpress: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => incidents()),
                        );
                      },),
                      reusableCard(BGimage: Image.asset('images/5.png',height: 80,),title: 'Evacuation',onpress: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => evacuation()),
                        );
                      },),
                      reusableCard(BGimage: Image.asset('images/6.png',height: 80,),title: 'First Aid',onpress: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => firstAid()),
                        );
                      },),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class reusableCard extends StatelessWidget {
  reusableCard({this.BGimage,this.title,this.onpress});

  final Image BGimage;
  final String title;
  Function onpress;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.fromLTRB(10,5,10,5),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.0),
          boxShadow: [BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),)]
      ),
      child: Stack(
        children: [
          BGimage,
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black),),
              Container(
                margin: EdgeInsets.only(top: 5,bottom: 5),
                height: 25,
                width: 50,
                decoration: BoxDecoration(
                  color: mainColor2,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: IconButton(
                  padding: EdgeInsets.all(2),
                  onPressed: onpress,
                  icon: Icon(Icons.arrow_forward,color: mainColor,size: 20,),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


