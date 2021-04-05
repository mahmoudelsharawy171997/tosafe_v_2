import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tosafe_v_2/classes/language.dart';
import 'package:tosafe_v_2/globalElements.dart';
import 'package:tosafe_v_2/localization/demo_localization.dart';
import 'package:tosafe_v_2/localization/localization_constants.dart';
import 'home.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class login extends StatefulWidget {

  static void setLocale(BuildContext context, Locale newLocale) {
    _loginState state = context.findAncestorStateOfType<_loginState>();
    state.setLocale(newLocale);
  }

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  Locale _locale;
  void setLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  @override
  void didChangeDependencies() {
    getLocale().then((locale) {
      setState(() {
        this._locale = locale;
      });
    });
    super.didChangeDependencies();
  }

  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool showPassword = true;

  bool English2 = true;
  bool Arapic = false;

  void _changeLanguage(Languages language) async {
    Locale _temp = await ssetLocale(language.languageCode);
    login.setLocale(context, _temp);
  }

  void Language(context) {
    String lang = 'en';
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return StatefulBuilder(
            builder: (BuildContext context,
                void Function(void Function()) setState) {
              return Container(
                padding: EdgeInsets.only(top: 40, left: 20, right: 20),
                height: MediaQuery
                    .of(context)
                    .size
                    .height * 0.5,
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
                    Text(getTranslated(context, 'Change_language'),
                      style: TextStyle(
                          color: mainColor,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
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
                                value: English2,
                                onChanged: (value) {
                                  setState(() {
                                    English2 = value;
                                    Arapic = !value;
                                    lang = 'en';
                                  });
                                },
                              ),
                              Image.asset('images/uk .png'),
                              Text(
                                'English',
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
                                    English2 = !value;
                                    lang = 'ar';
                                  });
                                },
                              ),
                              Image.asset('images/saudi-arabia .png'),
                              Text(
                                'Arabic',
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
                      onpress: (){
                        print("lang is $lang");
                        if (lang == English2) {
                          _changeLanguage(Languages
                              .languageList()
                              .first);
                        } else {
                          _changeLanguage(Languages
                              .languageList()
                              .last);
                        }
                      },
                    ),
                  ],
                ),
              );
            }
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        locale: _locale,
        supportedLocales: [
          Locale('en', 'US'),
          Locale('ar', 'EG'),
        ],
        localizationsDelegates: [
          DemoLocalization.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        localeResolutionCallback: (locale, supportedLocales) {
          for (var supportedLocale in supportedLocales) {
            if (supportedLocale.languageCode == locale.languageCode &&
                supportedLocale.countryCode == locale.countryCode) {
              return supportedLocale;
            }
          }
          return supportedLocales.first;
        },
        home: Scaffold(
          body: Stack(
            children: [
              SizedBox(
                  width: double.infinity,
                  child: Image.asset('images/Repeat Grid 2.png',
                    alignment: Alignment.topRight,)),
              Form(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 15),
                            width: 50,
                            // ignore: deprecated_member_use
                            child: FlatButton(
                              padding: EdgeInsets.all(0),
                              height: 50,
                              textColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              color: mainColor2,
                              onPressed: () {
                                Language(context);
                              },
                              child: Image.asset(
                                'images/noun_Language.png',
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.fromLTRB(0, 5, 0, 15),
                        child: Image.asset('images/Group 16.png',
                          fit: BoxFit.fitHeight,
                          height: 40,),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Image.asset(
                          'images/undraw_Access_account_re_8spm.png',
                          fit: BoxFit.fitHeight,
                          height: 180,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 15, 0, 5),
                        child: Text('LOG IN',
                          style: TextStyle(fontSize: 35, fontWeight: FontWeight
                              .bold,),),
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
                            if (value.isEmpty) {
                              return 'this field requred!';
                            }
                          },
                          controller: nameController,
                          decoration: InputDecoration(
                            labelStyle: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 20,
                            ),
                            border: InputBorder.none,
                            labelText: 'Username',
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
                            if (value.isEmpty) {
                              return 'this field requred!';
                            }
                          },
                          obscureText: showPassword,
                          controller: passwordController,
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                              icon: Icon(Icons.remove_red_eye),
                              onPressed: () =>
                                  setState(() => showPassword = !showPassword),
                            ),
                            labelStyle: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 20,
                            ),
                            border: InputBorder.none,
                            labelText: 'Password',
                          ),
                        ),
                      ),
                      bottomFlatButton(
                        title: 'Log in', color: mainColor, onpress: () {
                        if (_formKey.currentState.validate()) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (_) => home()),
                          );
                        }
                      },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }
  }
