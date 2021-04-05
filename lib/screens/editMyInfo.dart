import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tosafe_v_2/globalElements.dart';
import 'package:tosafe_v_2/widgets/notifiedAppBar.dart';

class editMyInfo extends StatefulWidget {

  editMyInfo({@required this.profileName});
  String profileName;

  @override
  _editMyInfoState createState() => _editMyInfoState();
}

class _editMyInfoState extends State<editMyInfo> {

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

  final _formKey = GlobalKey<FormState>();

  TextEditingController profileNameController = TextEditingController();

  Widget _selectedImage(){
    if(imageFile==null){
      return framedPhoto(path: 'images/pexels-edmond-dantès-4342498.png',width: 190,height: 190,);
    }else {
      return Image.file(imageFile,width: 190,height: 190,);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: mainColor),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: [
          Container(margin: EdgeInsets.only(right: 15),child: notificationButton(counter: 10))
        ],
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: ListView(
            children: [
              Text('Edit My info',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
              Container(
                  margin: EdgeInsets.only(top: 40,bottom: 15),
                  alignment: Alignment.center,
                  width: double.infinity,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      _selectedImage(),
                      GestureDetector(
                        onTap: ((){
                          _showDialog(context);
                        }),
                        child: Container(
                          width: 190,
                          height: 190,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color.fromRGBO(50, 50, 50, 0.6)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('images/noun_Camera_6.png'),
                              Text('Change photo',style: TextStyle(color: Colors.white,height: 1.5,fontWeight: FontWeight.bold),)
                            ],
                          ),
                        ),
                      ),

                    ],
                  )
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                margin: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextFormField(
                  validator: (value) {
                    if(value.isEmpty){
                      return 'this field requred!';
                    }
                  },
                  controller: profileNameController,
                  decoration: InputDecoration(
                      labelStyle: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 20,
                      ),
                      border: InputBorder.none,
                      labelText: 'Username',
                      //hintText: profileName,
                      hintStyle: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20,height: 1.5)
                  ),
                ),
              ),
              bottomFlatButton(title: 'Save changes',color: mainColor,onpress: (){
                if(_formKey.currentState.validate())
                {
                  Navigator.of(context).pop();}
              },),
            ],
          ),
        ),
      ),
    );
  }


}