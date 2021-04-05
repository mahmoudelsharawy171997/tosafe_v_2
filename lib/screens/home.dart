import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tosafe_v_2/globalElements.dart';
import 'HSE.dart';
import 'changePassword.dart';
import 'editMyInfo.dart';
import 'helpDesk.dart';
import 'login.dart';
import 'maintainance.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {

  String profileName='Eng Mahmoud';

  bool isCollapsed = true;
  double screenWidth, screenHeight;
  Duration duration = Duration(milliseconds: 300);
  bool English = true;
  bool Arapic = false;

  void Language(context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => Container(
        padding: EdgeInsets.only(top: 40, left: 20, right: 20),
        height: MediaQuery.of(context).size.height * 0.5,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50.0),
            topRight: Radius.circular(50.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Change language',
              style: TextStyle(
                  color: mainColor, fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Text(
              'Select language you prefer for app.',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.grey[500]),
            ),
            Container(
              padding: EdgeInsets.only(right: 150),
              child: Column(
                children: [
                  Row(
                    children: [
                      Checkbox(
                        activeColor: mainColor,
                        value: English,
                        onChanged: (value) {
                          setState(() {
                            English = value;
                            Arapic = !value;
                          });
                        },
                      ),
                      Image.asset('images/uk .png'),
                      Text(
                        '   English',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        activeColor: mainColor,
                        value: Arapic,
                        onChanged: (value) {
                          setState(() {
                            Arapic = value;
                            English = !value;
                          });
                        },
                      ),
                      Image.asset('images/saudi-arabia .png'),
                      Text(
                        '   Arapic',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            bottomFlatButton(
              title: 'Change',
              color: mainColor,
              onpress: (){},
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    screenWidth = size.width;
    screenHeight = size.height;
    return Scaffold(
      body: Stack(
        children: [
          menu(context),
          dashboard(context),
        ],
      ),
    );
  }

  Widget menu(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
            icon: Icon(Icons.close),
            onPressed: () {
              setState(() {
                isCollapsed = !isCollapsed;
              });
            }),
        Container(
            margin: EdgeInsets.only(left: 20, top: 30),
            child: framedPhoto(
              path: 'images/pexels-edmond-dantès-4342498.png',
              width: 85,
              height: 85,
            )),
        Container(
            margin: EdgeInsets.only(left: 20, top: 10, bottom: 35),
            child: Text(
              profileName,
              style: TextStyle(
                  color: mainColor, fontWeight: FontWeight.bold, fontSize: 25),
            )),
        drawerButton(
          icon: 'images/noun_edit_97258.png',
          title: 'Edit My info',
          distnation: editMyInfo(profileName: profileName,),
        ),
        drawerButton(
          icon: 'images/Group 358.png',
          title: 'Change password',
          distnation: changePassword(),
        ),
        FlatButton(
          onPressed: () {
            Language(context);
          },
          child: Row(
            children: [
              Container(
                margin:
                    EdgeInsets.only(left: 5, right: 15, bottom: 10, top: 10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: mainColor3,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset('images/noun_Language.png'),
              ),
              Text(
                'Language',
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        SizedBox(
          height: 35,
        ),
        FlatButton(
          padding: EdgeInsets.only(left: 0),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => login()),
            );
          },
          child: Container(
            alignment: Alignment.center,
            width: 200,
            height: 50,
            child: Text(
              'Log out',
              style: TextStyle(
                  height: 1,
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            decoration: BoxDecoration(
                color: redColor,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(15),
                    topRight: Radius.circular(15))),
          ),
        ),
      ],
    );
  }

  Widget dashboard(context) {
    return AnimatedPositioned(
      duration: duration,
      top: isCollapsed ? 0 : 0.1 * screenHeight,
      bottom: isCollapsed ? 0 : 0.1 * screenHeight,
      left: isCollapsed ? 0 : 0.6 * screenWidth,
      right: isCollapsed ? 0 : -0.4 * screenWidth,
      child: Material(
        borderRadius: BorderRadius.circular(20),
        elevation: 8,
        child: MaterialApp(
            home: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            leadingWidth: 100,
            leading: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Image.asset(
                'images/Group 16.png',
              ),
            ),
            actions: [
              IconButton(
                  icon: Icon(
                    Icons.notifications_none,
                    color: Colors.grey[900],
                    size: 30,
                  ),
                  onPressed: () {}),
              Container(
                margin: EdgeInsets.only(
                  right: 20,
                ),
                child: FloatingActionButton(
                  elevation: 0,
                  backgroundColor: Colors.white,
                  onPressed: () {
                    setState(() {
                      isCollapsed = !isCollapsed;
                    });
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Container(
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
                ),
              )
            ],
          ),
          body: Container(
            padding: EdgeInsets.only(left: 20, bottom: 20, right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome !',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    profileName,
                    style: TextStyle(
                        color: mainColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: mainColor2,
                  ),
                ),
                FlatButton(
                  child: Image.asset(
                    'images/Group 412.png',
                    fit: BoxFit.fitHeight,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HSE()),
                    );
                  },
                ),
                FlatButton(
                  child: Image.asset(
                    'images/Group 413.png',
                    fit: BoxFit.fitHeight,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => maintainance()),
                    );
                  },
                ),
                FlatButton(
                  child: Image.asset(
                    'images/Group 414.png',
                    fit: BoxFit.fitHeight,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => helpDesk()),
                    );
                  },
                ),
              ],
            ),
          ),
        )),
      ),
    );
  }
}

class drawerButton extends StatelessWidget {
  const drawerButton(
      {@required this.icon, @required this.title, this.distnation});
  final String icon, title;
  final Widget distnation;
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => distnation),
        );
      },
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(left: 5, right: 15, bottom: 10, top: 10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: mainColor3,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset(icon),
          ),
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
