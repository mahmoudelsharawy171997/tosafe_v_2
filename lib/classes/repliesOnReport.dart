import 'package:flutter/material.dart';
import 'package:tosafe_v_2/globalElements.dart';

class repliesOnReport {
  repliesOnReport({this.formattedDate});

  String formattedDate;

  void showModal(context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => Container(
        padding: EdgeInsets.only(top: 20, left: 15, right: 15),
        height: MediaQuery.of(context).size.height * 0.95,
        decoration: new BoxDecoration(
          color: Colors.white,
          borderRadius: new BorderRadius.only(
            topLeft: const Radius.circular(50.0),
            topRight: const Radius.circular(50.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 10),
              width: 150,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset('images/noun_comment.png'),
                  Text(
                    'Replies',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: mainColor),
                  ),
                ],
              ),
            ),
            Container(
              height: 420,
              child: ListView(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    child: Row(
                      children: [
                        Container(
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Image.asset(
                                'images/Group 415.png',
                                width: 55,
                                fit: BoxFit.fitWidth,
                              ),
                              Image.asset(
                                'images/profile.png',
                                width: 45,
                                fit: BoxFit.fitWidth,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Eng Mahmoud',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                              Text(
                                formattedDate,
                                style:
                                    TextStyle(fontSize: 15, color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 270,
                    width: double.infinity,
                    child: Stack(
                      children: [
                        Container(
                          height: double.infinity,
                          width: double.infinity,
                          alignment: Alignment.bottomLeft,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: mainColor,
                          ),
                          child: Column(
                            children: [
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Image.asset(
                                  'images/Group1/Ssua56C7i5.png',
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(20, 15, 20, 10),
                                child: Text(
                                  'This place will be to show reply comment on this report with picture',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      height: 1),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  replyItem(formattedDate: formattedDate),
                  replyItem(formattedDate: formattedDate),
                  replyItem(formattedDate: formattedDate),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              margin: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 250,
                    child: TextField(
                      decoration: InputDecoration(
                        labelStyle: TextStyle(
                            color: Colors.grey[500],
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                        border: InputBorder.none,
                        labelText: 'Write your comment',
                      ),
                    ),
                  ),
                  Image.asset(
                    'images/noun_Camera.png',
                    fit: BoxFit.fitWidth,
                    width: 30,
                  )
                ],
              ),
            ),
            bottomFlatButton(title: 'Send',color: mainColor,onpress: (){},),
          ],
        ),
      ),
    );
  }
}

class replyItem extends StatelessWidget {
  const replyItem({
    Key key,
    @required this.formattedDate,
  }) : super(key: key);

  final String formattedDate;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      'images/Group 415.png',
                      width: 55,
                      fit: BoxFit.fitWidth,
                    ),
                    Image.asset(
                      'images/profile.png',
                      width: 45,
                      fit: BoxFit.fitWidth,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                child: Column(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Eng Mahmoud',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold)),
                    Text(
                      formattedDate,
                      style: TextStyle(
                          fontSize: 15, color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
            decoration: BoxDecoration(
                color: mainColor2,
                borderRadius: BorderRadius.circular(20)),
            child: Text(
              'This place will be to show reply comment on this report',
              style: TextStyle(
                  color: mainColor,
                  fontSize: 18,
                  height: 1),
            ),
          )
        ],
      ),
    );
  }
}
