
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Screens/Authention.dart';
import 'package:google_sign_in/google_sign_in.dart';




class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  GoogleSignIn _googleSignIn = GoogleSignIn();
  final FirebaseAuth _auth = FirebaseAuth.instance;


    Future<void> signOut() async {
    _googleSignIn.signOut();
     _auth.signOut();
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Authention()));
  }

  Widget fullname = FutureBuilder(
    future: FirebaseAuth.instance.currentUser(),
    builder: (context, AsyncSnapshot<FirebaseUser> snapshot) {
      if (snapshot.hasData) {
        return Text(snapshot.data.displayName,style: TextStyle(
          fontFamily: 'Sans',
          fontWeight: FontWeight.w900,
          fontSize: 35.0,
          letterSpacing: 0.4,
          color: Colors.black,
        ));
      }
      else {
        return Text('Loading...');
      }
    },
  );
  Widget photourrl = FutureBuilder(
    future: FirebaseAuth.instance.currentUser(),
    builder: (context, AsyncSnapshot<FirebaseUser> snapshot) {
      if (snapshot.hasData) {
        return CircleAvatar(
          child: Image.network(snapshot.data.photoUrl,),
        ) ;
      }
      else {
        return Text('Loading...');
      }
    },
  );

  @override
  Widget build(BuildContext context,) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(255, 255, 255, .9),
        body: SafeArea(
          child: ListView(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(50),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: fullname,
                      ),
                      Padding(
                        padding: EdgeInsets.all(4),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: <Widget>[
                            Card(
                              child: Container(
                                alignment: Alignment.topLeft,
                                padding: EdgeInsets.all(15),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        "Thông tin cơ bản",
                                        style: TextStyle(
                                          color: Colors.black87,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 20,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                    Divider(
                                      color: Colors.black,
                                    ),
                                    Container(
                                        child: Column(
                                          children: <Widget>[
                                            ListTile(
                                              contentPadding:
                                              EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                                              leading: Icon(Icons.lock),
                                              title: Text("Đổi mật khẩu"),
                                            ),
                                            Divider(
                                              color: Colors.black,
                                            ),
                                            ListTile(
                                              leading: Icon(Icons.calendar_today),
                                              title: Text("Lịch sử đơn hàng"),
                                            ),
                                            Divider(
                                              color: Colors.black,
                                            ),
                                            ListTile(
                                              leading: Icon(Icons.location_on),
                                              title: Text("Địa chỉ"),
                                            ),
                                            Divider(
                                              color: Colors.black,
                                            ),
                                            ListTile(
                                              onTap: signOut,
                                              leading: Icon(Icons.assignment_return),
                                              title: Text("Đăng xuất"),
                                            ),
                                          ],
                                        ))
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ));
  }

}



