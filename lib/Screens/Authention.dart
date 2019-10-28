import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class Authention extends StatelessWidget {
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
                            onPressed: (){},
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
                      onPressed: (){},
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
                        onPressed: () {},
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
