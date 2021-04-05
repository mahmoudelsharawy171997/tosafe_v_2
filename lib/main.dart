import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:tosafe_v_2/screens/login.dart';
import 'globalElements.dart';
import 'localization/localization_constants.dart';

void main() => runApp(
  MaterialApp(
    initialRoute: '/',
    routes: {
      '/home': (context) => AfterSplash(),
    },
    home: MyApp(),
  ),
);

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    // if (this._locale == null) {
    //   return Container(
    //     child: Center(
    //       child: CircularProgressIndicator(
    //           valueColor: AlwaysStoppedAnimation<Color>(Colors.blue[800])),
    //     ),
    //   );
    // } else {
    return SplashScreen(
      photoSize: 100.0,
      seconds: 1,
      navigateAfterSeconds: AfterSplash(),
      image: Image.asset(
        'images/Group 16.png',
        alignment: Alignment.center,
      ),
      loaderColor: mainColor,
      loadingText: Text('loading'),
    );
  }
}
//}

class AfterSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return login();
  }
}


