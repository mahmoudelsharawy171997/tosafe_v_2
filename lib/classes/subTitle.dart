import 'package:flutter/material.dart';
class subTitle extends StatelessWidget {
  const subTitle({@required this.content});
  final String content;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10,top: 10),
      padding: EdgeInsets.only(top: 10,right: 25,left: 25,bottom: 10),
      decoration: BoxDecoration(color: Colors.grey[300],borderRadius: BorderRadius.circular(15)),
      child: Text(content,style: TextStyle(fontSize: 20,),),
    );
  }
}