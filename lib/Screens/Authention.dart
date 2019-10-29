
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Screens/Home.dart';
import 'package:flutter_app/Screens/Sign_in.dart';
import 'package:flutter_app/Screens/Sign_up.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Authention extends StatefulWidget {

  @override
  _AuthentionState createState() => _AuthentionState();
}

class _AuthentionState extends State<Authention> {
  //final GoogleSignIn _googleSignIn = GoogleSignIn();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final kFirebaseAnalytics = FirebaseAnalytics();
  final kFirebaseAuth = FirebaseAuth.instance;


  GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);



  Future<FirebaseUser> _handleSignIn() async {
    final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
    final GoogleSignInAuthentication googleAuth = await googleUser.authentication;


    final AuthCredential credential = GoogleAuthProvider.getCredential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    FirebaseUser user = (await _auth.signInWithCredential(credential)).user;
    print("signed in " + user.displayName);



    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> MyHomePage()));

    kFirebaseAnalytics.logLogin();
    return user;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Stack(
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      image: DecorationImage(image: AssetImage("assets/img/authention.jpg"), fit: BoxFit.cover),
                    ),
                    foregroundDecoration: BoxDecoration(
                        color: Colors.black.withAlpha(100)
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    width: double.infinity,
                    child: Column(
                      children: <Widget>[
                        Spacer(flex: 2,),
                        Text("existing members", style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16.0,
                            color: Colors.white
                        ),),
                        SizedBox(height: 10.0),
                        SizedBox(
                          width: double.infinity,
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0)
                            ),
                            padding: const EdgeInsets.all(16.0),
                            color: Colors.white,
                            child: Text("Login", style: TextStyle(
                                color: Colors.pink
                            ),),
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));
                            },
                          ),
                        ),
                        Spacer()
                      ],
                    ),
                  ),
                ],
              ),),
            Expanded(child: Container(
              padding: const EdgeInsets.all(16.0),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white
              ),
              child: Column(
                children: <Widget>[
                  Spacer(),
                  SizedBox(height: 20.0),
                  SizedBox(
                    width: double.infinity,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)
                      ),
                      padding: const EdgeInsets.all(16.0),
                      color: Colors.pink,
                      child: Text("Sign up", style: TextStyle(
                          color: Colors.white
                      ),),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute (builder: (context)=>SignUpPage()));
                      },
                    ),
                  ),
                  SizedBox(height: 30.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      RaisedButton.icon(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2.0)
                        ),
                        color: Colors.red,
                        icon: Icon(FontAwesomeIcons.google, color: Colors.white,),
                        label: Text("Google", style: TextStyle(color: Colors.white),),
                        onPressed: () {
                          _handleSignIn();
                          //_login();
                        },
                      ),
                      SizedBox(width: 10.0),
                      Text("or"),
                      SizedBox(width: 10.0,),
                      RaisedButton.icon(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2.0)
                        ),
                        color: Colors.indigo,
                        icon: Icon(FontAwesomeIcons.facebook, color: Colors.white,),
                        label: Text("Facebook", style: TextStyle(color: Colors.white),),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  Spacer(flex: 2,)
                ],
              ),
            ),)
          ],
        ),
      ),
    );
  }

}

