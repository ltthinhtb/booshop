import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/Screens/Onbroad.dart';


void main(){
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]);
  /// To set orientation always portrait
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
    statusBarColor: Colors.transparent, //or set color with: Color(0xFF0000FF)
  ));
  ///Set color status bar
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RICARDO',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: SplashPage(),
      routes: <String,WidgetBuilder>{
        'login': (BuildContext context) => OnBroading()
      },
    );
  }
}


class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  startTime() async {
    return new Timer(Duration(milliseconds: 4500), NavigatorPage);
  }

  // ignore: non_constant_identifier_names
  void NavigatorPage() {
    Navigator.of(context).pushReplacementNamed("login");
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/img/girl.jpg'),
          fit: BoxFit.cover
        ),
      ),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(0, 0, 0, 0.7),
                    Color.fromRGBO(0, 0, 0, 0.7)
                  ],
                  begin: FractionalOffset.topCenter,
                  end: FractionalOffset.bottomCenter)),
          //cho màu đen back
          child: Center(
            child: SingleChildScrollView(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 30.0),
                    ),
                    /// Text header "Welcome To" (Click to open code)
                    Text(
                      "Welcome to",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w200,
                        fontFamily: "Sans",
                        fontSize: 19.0,
                      ),
                    ),
                    /// Animation text Treva Shop to choose Login with Hero Animation (Click to open code)
                    Hero(
                      tag: "Ricardo",
                      child: Text(
                        "RICARDO Shop",
                        style: TextStyle(
                          fontFamily: 'Sans',
                          fontWeight: FontWeight.w900,
                          fontSize: 35.0,
                          letterSpacing: 0.4,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}


