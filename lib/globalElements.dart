import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tosafe_v_2/widgets/sideMenuCard.dart';

DateTime now = DateTime.now();
String formattedDate = DateFormat('dd - MM - yyyy  h:mm a').format(now);
String formattedDateEndPage = DateFormat('dd - MM - yyyy').format(now);
String formattedDateHeaderPage = DateFormat('dd  MMM  yyyy Report').format(now);

List<sideMenuCard> newTab=[
  sideMenuCard(formattedDate: formattedDate,underReview: 0,done: 0,canceled: 0,),
  sideMenuCard(formattedDate: formattedDate,underReview: 0,done: 0,canceled: 0,),
  sideMenuCard(formattedDate: formattedDate,underReview: 0,done: 0,canceled: 0,),
  sideMenuCard(formattedDate: formattedDate,underReview: 0,done: 0,canceled: 0,),
];

List<sideMenuCard> underReviewTab=[
  sideMenuCard(formattedDate: formattedDate,underReview: 1,done: 0,canceled: 0,),
  sideMenuCard(formattedDate: formattedDate,underReview: 1,done: 0,canceled: 0,),
  sideMenuCard(formattedDate: formattedDate,underReview: 1,done: 0,canceled: 0,),
  sideMenuCard(formattedDate: formattedDate,underReview: 1,done: 0,canceled: 0,),
];

List<sideMenuCard> doneTab=[
  sideMenuCard(formattedDate: formattedDate,underReview: 0,done: 1,canceled: 0,),
  sideMenuCard(formattedDate: formattedDate,underReview: 0,done: 1,canceled: 0,),
  sideMenuCard(formattedDate: formattedDate,underReview: 0,done: 1,canceled: 0,),
  sideMenuCard(formattedDate: formattedDate,underReview: 0,done: 1,canceled: 0,),
];

List<sideMenuCard> canceledTab=[
  sideMenuCard(formattedDate: formattedDate,underReview: 0,done: 0,canceled: 1,),
  sideMenuCard(formattedDate: formattedDate,underReview: 0,done: 0,canceled: 1,),
  sideMenuCard(formattedDate: formattedDate,underReview: 0,done: 0,canceled: 1,),
  sideMenuCard(formattedDate: formattedDate,underReview: 0,done: 0,canceled: 1,),
];

List<ListItem> dropdownItems = [
  ListItem(1, "All Branches"),
  ListItem(2, "Second Item"),
  ListItem(3, "Third Item"),
  ListItem(4, "Fourth Item")
];

const Color mainColor=Color.fromRGBO(17, 169, 157, 1);
const Color mainColor2=Color.fromRGBO(17, 169, 157, 0.1);
const Color mainColor3=Color.fromRGBO(17, 169, 157, 0.2);
const Color redColor=Color.fromRGBO(243, 24, 77, 1);
const Color redColor2=Color.fromRGBO(243, 24, 77, 0.1);
const Color greenColor=Color.fromRGBO(141, 197, 62, 1);
const Color greenColor2=Color.fromRGBO(141, 197, 62, 0.1);

class ListItem {
  int value;
  String name;

  ListItem(this.value, this.name);
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



class pictureAndComment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 50),
        margin: EdgeInsets.only(bottom: 10),
        height: 200,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey[300]),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('images/noun_Camera.png'),
            Text(
              'Take or upload the picture',
              style: TextStyle(color: Colors.grey[500]),
            )
          ],
        ),
      ),
      inputComment(hint: 'Write your comment',),
    ],);
  }
}

class inputComment extends StatelessWidget {
  final String hint;
  inputComment({@required this.hint});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10,top: 10),
      padding: EdgeInsets.only(right: 25, left: 25, top: 5, bottom: 5),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextField(
        decoration: InputDecoration(
          labelStyle: TextStyle(
            color: Colors.grey[600],
            fontSize: 20,
          ),
          border: InputBorder.none,
          labelText: hint,
        ),
      ),
    );
  }
}

class bottomFlatButton extends StatelessWidget {
  const bottomFlatButton({@required this.title,@required this.color,this.onpress});
  final String title;
  final Color color;
  final Function onpress;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 20),
      child: FlatButton(
          height: 60,
          textColor: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)),
          color: color,
          onPressed: onpress ,
          child: Text(
            title,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          )),
    );
  }
}

class pictureWithData extends StatelessWidget {
  const pictureWithData({@required this.imageName});
  final String imageName;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 10),
      height: 300,
      decoration: BoxDecoration(
        color: mainColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.bottomLeft,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  child: Image.asset(imageName,fit: BoxFit.fill,),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  child: Text(
                    'This place will be to show comment on this picture',
                    style: TextStyle(color: Colors.white,fontSize: 20,height: 1),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

TextStyle style1=TextStyle(fontSize: 20,fontWeight: FontWeight.bold);
TextStyle style2=TextStyle(fontSize: 20,);
EdgeInsets edgeInsets1=EdgeInsets.only(top: 10,bottom: 20);
EdgeInsets edgeInsets2=EdgeInsets.only(top: 15,bottom: 15,right: 5,left: 10);

class contentStyle extends StatelessWidget {
  const contentStyle({@required this.content,@required this.style,@required this.edgeInsets,});
  final String content;
  final TextStyle style;
  final EdgeInsets edgeInsets;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: edgeInsets1,
      child: Text(content,style: style1,),
    );
  }
}

class framedPhoto extends StatelessWidget {
  framedPhoto({@required this.path,@required this.width,@required this.height});
  final double width,height;
  final String path;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: height,
          width: width,
          child: Image.asset(path,fit: BoxFit.cover,),
        ),
        Container(
          height: height*1.25,
          width: width*1.25,
          child: Image.asset('images/Fram photo.png'),
        ),
      ],
    );
  }
}