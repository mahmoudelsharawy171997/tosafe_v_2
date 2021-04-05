import 'package:flutter/material.dart';

class horizontalListView extends StatelessWidget {
  horizontalListView({@required this.centerText});
  String centerText;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      margin: EdgeInsets.symmetric(vertical: 10),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          horizontalItem(centerText: centerText,),
          horizontalItem(centerText: centerText,),
          horizontalItem(centerText: centerText,),
        ],
      ),
    );
  }
}

class horizontalItem extends StatelessWidget {
  horizontalItem({@required this.centerText});
  String centerText;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 40, bottom: 40, right: 45, left: 45),
      margin: EdgeInsets.only(top: 10, bottom: 5, right: 10),
      width: 190,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[300]),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Image.asset('images/noun_Camera.png'),
          Text(
            centerText,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey[500]),
          )
        ],
      ),
    );
  }
}