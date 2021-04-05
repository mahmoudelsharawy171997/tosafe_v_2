import 'package:flutter/material.dart';
import '../globalElements.dart';

class horizontalListViewWithdata extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          horizontalItemWithData(imageName: 'images/Group2/2KIG3VfOUk.png',),
          horizontalItemWithData(imageName: 'images/Group2/b2Y38Aovxo.png',),
          horizontalItemWithData(imageName: 'images/Group2/Cv8YYm0Vqd.png',),
        ],
      ),
    );
  }
}

class horizontalItemWithData extends StatelessWidget {
  horizontalItemWithData({@required this.imageName});
  final String imageName;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 5, right: 10),
      height: 319,
      width: 200,
      alignment: Alignment.bottomLeft,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: mainColor,
      ),
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 190,
                width: double.infinity,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                child: Image.asset(imageName,fit: BoxFit.fill,),
              ),
              Container(
                margin: EdgeInsets.only(top: 15,left: 20,right: 20,bottom: 20),
                child: Text(
                  'This place will be to show comment on this picture',
                  style: TextStyle(color: Colors.white,fontSize: 20,height: 1),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}