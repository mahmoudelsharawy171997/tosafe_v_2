import 'package:flutter/material.dart';

import '../globalElements.dart';

class notificationButton extends StatelessWidget {
  const notificationButton({
    @required this.counter,
  });

  final int counter;

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: <Widget>[
          IconButton(
              icon: Icon(Icons.notifications_none,color: Colors.grey[800],size: 40,),
              onPressed: (){}
              ),
          Positioned(  // draw a red marble
            top: 8,
            left: 5,
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: new BoxDecoration(
                color: greenColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: new Text(
                '$counter',
                style: new TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          )
        ]
    );
  }
}