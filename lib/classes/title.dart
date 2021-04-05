import 'package:flutter/material.dart';
import '../globalElements.dart';
class title extends StatelessWidget {
  const title({@required this.content});
  final String content;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(top: 10,right: 25,left: 25,bottom: 10),
      decoration: BoxDecoration(color: mainColor2,borderRadius: BorderRadius.circular(10)),
      child: Text(content,style: TextStyle(color: mainColor,fontSize: 20,),),
    );
  }
}