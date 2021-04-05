import 'package:flutter/material.dart';
import 'package:tosafe_v_2/widgets/slidemenu.dart';
import '../globalElements.dart';

class sideMenuCard extends StatelessWidget {
  sideMenuCard({@required String formattedDate,double underReview,double done,this.canceled})
  {
    this.formattedDate=formattedDate;
    this.underReview=underReview;
    this.done=done;
  }
  String formattedDate;
  double underReview;
  double done;
  double canceled;

  int num=12;


  @override
  Widget build(BuildContext context) {
    return SlideMenu(
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            height: 120,
            padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 1,
                  blurRadius: 5,
                )
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(formattedDateHeaderPage,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Safety System Status",
                      style: TextStyle(
                            fontSize: 18, color: mainColor),
                    ),
                    Opacity(
                      opacity: underReview,
                      child: Container(
                        alignment: Alignment.center,
                        width: 40,
                        height: 40,
                        child: Text(
                          num.toString(),
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: greenColor),
                        ),
                        decoration: (BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: greenColor2)),
                      ),
                    )
                  ],
                ),
                Text(formattedDate,style: TextStyle(fontSize:14),),
              ],
            ),
          ),
          Opacity(
            opacity: done,
            child: Container(
              margin: EdgeInsets.all(10),
              height: 120,
              alignment: Alignment.bottomRight,
              child: Image.asset('images/Group 46.png'),
            ),
          ),
          Opacity(
            opacity: canceled,
            child: Container(
              margin: EdgeInsets.all(10),
              height: 120,
              alignment: Alignment.bottomRight,
              child: Image.asset('images/Group 270.png'),
            ),
          ),
        ],
      ),
      menuItems: <Widget>[
        new Container(
          decoration: BoxDecoration(color: Colors.grey[100],borderRadius: BorderRadius.circular(15)),
          child: new IconButton(
            icon: new Icon(Icons.edit,), onPressed: () {  },
          ),
        ),
        new Container(
          decoration: BoxDecoration(color: redColor2,borderRadius: BorderRadius.circular(15)),
          child: new IconButton(
            icon: new Icon(Icons.delete,color: redColor,), onPressed: () {  },
          ),
        ),
      ],
    );
  }
}