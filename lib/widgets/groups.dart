import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tosafe_v_2/globalElements.dart';


class Group1 extends StatefulWidget {
  Group1({this.counter, this.groupTitle});

  int counter;
  String groupTitle;

  @override
  _Group1State createState() => _Group1State();
}
class _Group1State extends State<Group1> {
  File imageFile;

  _openGallary(BuildContext context) async {
    var picture=await ImagePicker.pickImage(source: ImageSource.gallery);
    this.setState(() {
      imageFile=picture;
    });
    Navigator.of(context).pop();
  }

  _openCamera(BuildContext context) async {
    var picture=await ImagePicker.pickImage(source: ImageSource.camera);
    this.setState(() {
      imageFile=picture;
    });
    Navigator.of(context).pop();
  }

  Widget _selectedImage(){
    if(imageFile==null){
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('images/noun_Camera.png'),
          Text(
            'Take or upload the picture',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey[500],height: 1.5,),
          )
        ],
      );
    }else {
      return Image.file(imageFile,fit: BoxFit.cover,);
    }
  }

  Future<void> _showDialog(BuildContext context){
    return showDialog(context: context,builder: (BuildContext context){
      return AlertDialog(
        content: SingleChildScrollView(
          child: ListBody(
            children: [
              GestureDetector(
                child: Text('Gallary'),
                onTap: () {
                  _openGallary(context);
                },
              ),
              Padding(padding: EdgeInsets.all(8)),
              GestureDetector(
                child: Text('Camera'),
                onTap: (){
                  _openCamera(context);
                },
              ),
            ],
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Color.fromRGBO(17, 169, 157, 0.1),
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 15),
                  padding: EdgeInsets.all(10),
                  child: Text(
                    widget.counter.toString(),
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  decoration: BoxDecoration(
                      color: mainColor,
                      borderRadius: BorderRadius.circular(10)),
                ),
                Text(
                  widget.groupTitle,
                  style: TextStyle(
                      color: mainColor,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(vertical: 10),
            height: 200,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey[300]),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                _selectedImage(),
                GestureDetector(
                  onTap: ((){
                    _showDialog(context);
                  }),
                ),
              ],
            ),
          ),
          Container(
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
                labelText: 'Write your comment',
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Group1_V2 extends StatelessWidget {
  Group1_V2({this.counter, this.groupTitle,this.subTitle1,this.subTitle2});

int counter;
String groupTitle;
String subTitle1;
String subTitle2;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Color.fromRGBO(17, 169, 157, 0.1),
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 15),
                  padding: EdgeInsets.all(10),
                  child: Text(
                    counter.toString(),
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  decoration: BoxDecoration(
                      color: mainColor,
                      borderRadius: BorderRadius.circular(10)),
                ),
                Text(
                  groupTitle,
                  style: TextStyle(
                      color: mainColor,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          group1Content(subTitle: subTitle1,),
          group1Content(subTitle: subTitle2,),
        ],
      ),
    );
  }
}


class group1Content extends StatefulWidget {
  group1Content({@required this.subTitle});

  String subTitle;

  @override
  _group1ContentState createState() => _group1ContentState();
}
class _group1ContentState extends State<group1Content> {
  File imageFile;

  _openGallary(BuildContext context) async {
    var picture=await ImagePicker.pickImage(source: ImageSource.gallery);
    this.setState(() {
      imageFile=picture;
    });
    Navigator.of(context).pop();
  }

  _openCamera(BuildContext context) async {
    var picture=await ImagePicker.pickImage(source: ImageSource.camera);
    this.setState(() {
      imageFile=picture;
    });
    Navigator.of(context).pop();
  }

  Widget _selectedImage(){
    if(imageFile==null){
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('images/noun_Camera.png'),
          Text(
            'Take or upload the picture',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey[500],height: 1.5,),
          )
        ],
      );
    }else {
      return Image.file(imageFile,fit: BoxFit.cover,);
    }
  }

  Future<void> _showDialog(BuildContext context){
    return showDialog(context: context,builder: (BuildContext context){
      return AlertDialog(
        content: SingleChildScrollView(
          child: ListBody(
            children: [
              GestureDetector(
                child: Text('Gallary'),
                onTap: () {
                  _openGallary(context);
                },
              ),
              Padding(padding: EdgeInsets.all(8)),
              GestureDetector(
                child: Text('Camera'),
                onTap: (){
                  _openCamera(context);
                },
              ),
            ],
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadiusDirectional.circular(10)),
            padding: EdgeInsets.all(10),
            child: Text(widget.subTitle),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(vertical: 10),
            height: 200,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey[300]),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                _selectedImage(),
                GestureDetector(
                  onTap: ((){
                    _showDialog(context);
                  }),
                ),
              ],
            ),
          ),
          Container(
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
                labelText: 'Write your comment',
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Group2 extends StatelessWidget {
  Group2({this.counter, this.groupTitle,@required this.subTitles});

  int counter;
  String groupTitle;
  List<String>subTitles=[];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: mainColor2,
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 15),
                  padding: EdgeInsets.all(10),
                  child: Text(
                    counter.toString(),
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  decoration: BoxDecoration(
                      color: mainColor,
                      borderRadius: BorderRadius.circular(10)),
                ),
                Text(
                  groupTitle,
                  style: TextStyle(
                      color: mainColor,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Container(
            height: 265,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                itemWithTitle(title: subTitles[0],),
                itemWithTitle(title: subTitles[1],),
                itemWithTitle(title: subTitles[2],),
              ],
            ),
          ),
          Container(
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
                labelText: 'Write your comment',
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Group1WithData extends StatelessWidget {
  Group1WithData({this.counter, this.groupTitle,@required this.imageName});

  int counter;
  String groupTitle;
  String imageName;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20, top: 10),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: mainColor2,
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 15),
                  padding: EdgeInsets.all(10),
                  child: Text(
                    counter.toString(),
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  decoration: BoxDecoration(
                      color: mainColor,
                      borderRadius: BorderRadius.circular(10)),
                ),
                Text(
                  groupTitle,
                  style: TextStyle(
                      color: mainColor,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Container(
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
          ),
        ],
      ),
    );
  }
}

class Group1WithData_V2 extends StatelessWidget {
  Group1WithData_V2({
    this.counter,
    this.groupTitle,
    this.subtitle1,
    this.subtitle2,
    @required this.imageName1,
    @required this.imageName2
  });

  int counter;
  String groupTitle;
  String imageName1;
  String imageName2;
  String subtitle1;
  String subtitle2;


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20, top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                color: mainColor2,
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 15),
                  padding: EdgeInsets.all(10),
                  child: Text(
                    counter.toString(),
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  decoration: BoxDecoration(
                      color: mainColor,
                      borderRadius: BorderRadius.circular(10)),
                ),
                Text(
                  groupTitle,
                  style: TextStyle(
                      color: mainColor,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          subTitle(content: subtitle1,),
          Container(
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
                        child: Image.asset(imageName1,fit: BoxFit.fill,),
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
          ),
          subTitle(content: subtitle2,),
          Container(
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
                        child: Image.asset(imageName2,fit: BoxFit.fill,),
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
          ),
        ],
      ),
    );
  }
}

class Group2WithData extends StatelessWidget {
  Group2WithData({this.counter, this.groupTitle,@required this.subTitles});

  int counter;
  String groupTitle;
  List<String>subTitles=[];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: mainColor2,
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 15),
                  padding: EdgeInsets.all(10),
                  child: Text(
                    counter.toString(),
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  decoration: BoxDecoration(
                      color: mainColor,
                      borderRadius: BorderRadius.circular(10)),
                ),
                Text(
                  groupTitle,
                  style: TextStyle(
                      color: mainColor,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Container(
            height: 380,
            width: double.infinity,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                itemWithTitleAndData(title: subTitles[0],imageName: 'images/Group2/2KIG3VfOUk.png',),
                itemWithTitleAndData(title: subTitles[1],imageName: 'images/Group2/b2Y38Aovxo.png',),
                itemWithTitleAndData(title: subTitles[2],imageName: 'images/Group2/Cv8YYm0Vqd.png',),

              ],
            ),
          ),
        ],
      ),
    );
  }
}

class itemWithTitle extends StatefulWidget {
  itemWithTitle({this.title});
  String title;

  @override
  _itemWithTitleState createState() => _itemWithTitleState();
}
class _itemWithTitleState extends State<itemWithTitle> {
  File imageFile;

  _openGallary(BuildContext context) async {
    var picture=await ImagePicker.pickImage(source: ImageSource.gallery);
    this.setState(() {
      imageFile=picture;
    });
    Navigator.of(context).pop();
  }

  _openCamera(BuildContext context) async {
    var picture=await ImagePicker.pickImage(source: ImageSource.camera);
    this.setState(() {
      imageFile=picture;
    });
    Navigator.of(context).pop();
  }

  Widget _selectedImage(){
    if(imageFile==null){
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('images/noun_Camera.png'),
          Text(
            'Take or upload the picture',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey[500],height: 1.5,),
          )
        ],
      );
    }else {
      return Image.file(imageFile,fit: BoxFit.cover,);
    }
  }

  Future<void> _showDialog(BuildContext context){
    return showDialog(context: context,builder: (BuildContext context){
      return AlertDialog(
        content: SingleChildScrollView(
          child: ListBody(
            children: [
              GestureDetector(
                child: Text('Gallary'),
                onTap: () {
                  _openGallary(context);
                },
              ),
              Padding(padding: EdgeInsets.all(8)),
              GestureDetector(
                child: Text('Camera'),
                onTap: (){
                  _openCamera(context);
                },
              ),
            ],
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: 10),
          decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadiusDirectional.circular(10)),
          padding: EdgeInsets.all(10),
          child: Text(widget.title),
        ),
        Container(
          margin: EdgeInsets.only(top: 10, bottom: 5, right: 10),
          height: 200,
          width: 190,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey[300]),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              _selectedImage(),
              GestureDetector(
                onTap: ((){
                  _showDialog(context);
                }),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class itemWithTitleAndData  extends StatelessWidget {
  itemWithTitleAndData({this.title,this.imageName});
  String title;
  String imageName;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: 10),
          decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadiusDirectional.circular(10)),
          padding: EdgeInsets.all(10),
          child: Text(title),
        ),
        Container(
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
        ),
      ],
    );
  }
}