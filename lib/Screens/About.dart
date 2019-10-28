import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Padding(
          padding: EdgeInsets.all(0),
          child: Text('ABOUT US',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
        ),
      ),
      body: Padding(padding: EdgeInsets.all(8.0)),
    );
  }
}
