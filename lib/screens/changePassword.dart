import 'package:flutter/material.dart';
import 'package:tosafe_v_2/widgets/notifiedAppBar.dart';

import '../globalElements.dart';
class changePassword extends StatefulWidget {
  @override
  _changePasswordState createState() => _changePasswordState();
}

class _changePasswordState extends State<changePassword> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  bool showPassword = true;
  bool showConfirmPassword = true;
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
              Text('Change password',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
              Container(
                margin: EdgeInsets.only(left: 40,top: 60,bottom: 60),
                alignment:Alignment.centerLeft,
                child: Image.asset('images/Group 4412.png'),
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
                  obscureText: showPassword,
                  controller: passwordController,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: Icon(Icons.remove_red_eye),
                      onPressed: () => setState(() => showPassword = !showPassword),
                    ),
                    labelStyle: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 20,
                    ),
                    border: InputBorder.none,
                    labelText: 'New Password',
                  ),
                ),
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
                  obscureText: showConfirmPassword,
                  controller: confirmPasswordController,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: Icon(Icons.remove_red_eye),
                      onPressed: () => setState(() => showConfirmPassword = !showConfirmPassword),
                    ),
                    labelStyle: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 20,
                    ),
                    border: InputBorder.none,
                    labelText: 'Confirm New Password',
                  ),
                ),
              ),
              bottomFlatButton(title: 'Save new password',color: mainColor,onpress: (){
                if(_formKey.currentState.validate()&&passwordController.text==confirmPasswordController.text) {
                  Navigator.of(context).pop();
                }
              },),
          ],),
        ),
      ),
    );
  }
}
