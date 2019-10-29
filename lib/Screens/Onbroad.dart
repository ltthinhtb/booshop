import 'package:flutter/material.dart';
import 'package:flutter_app/Screens/Authention.dart';
import 'package:intro_views_flutter/intro_views_flutter.dart';
import 'package:intro_views_flutter/Models/page_view_model.dart';


class OnBroading extends StatefulWidget {
  @override
  _OnBroadingState createState() => _OnBroadingState();
}

var _fontHeaderStyle = TextStyle(
    fontFamily: "Popins",
    fontSize: 21.0,
    fontWeight: FontWeight.w800,
    color: Colors.black87,
    letterSpacing: 1.5
);

var _fontDescriptionStyle = TextStyle(
    fontFamily: "Sans",
    fontSize: 20.0,
    color: Colors.black,
    fontWeight: FontWeight.w400
);


final pages = [
  new PageViewModel(
      pageColor: const Color(0xFF607D8B),
      iconColor: Colors.black,
      bubbleBackgroundColor: Colors.black,
      title: Text(
        'RICARDO Shop',style: _fontHeaderStyle,
      ),
      body: Text(
          'Made in the street',textAlign: TextAlign.center,
          style: _fontDescriptionStyle
      ),
      mainImage: Image.asset(
        'assets/img/IlustrasiOnBoarding1.jpg',
        fit: BoxFit.cover,
        alignment: Alignment.center,
      )),

  new PageViewModel(
      pageColor: const Color(0xFF607D8B),
      iconColor: Colors.black,
      bubbleBackgroundColor: Colors.black,
      title: Text(
        'RICARDO Shop',style: _fontHeaderStyle,
      ),
      body: Text(
          'Not just fashion, but design',textAlign: TextAlign.center,
          style: _fontDescriptionStyle
      ),
      mainImage: Image.asset(
        'assets/img/IlustrasiOnBoarding2.jpg',
        fit: BoxFit.cover,
        alignment: Alignment.center,
      )),

  new PageViewModel(
      pageColor: const Color(0xFF607D8B),
      iconColor: Colors.black,
      bubbleBackgroundColor: Colors.black,
      title: Text(
        'RICARDO Shop',style: _fontHeaderStyle,
      ),
      body: Text(
          'A classic never goes out of style ',textAlign: TextAlign.center,
          style: _fontDescriptionStyle
      ),
      mainImage: Image.asset(
        'assets/img/IlustrasiOnBoarding3.jpg',
        fit: BoxFit.cover,
        alignment: Alignment.center,
      )),

];

class _OnBroadingState extends State<OnBroading> {


  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) => IntroViewsFlutter(
        pages,
        showNextButton: true,
        showBackButton: true,
        onTapDoneButton: () {
          Navigator.of(context).pushReplacement(PageRouteBuilder(pageBuilder:(_,__,___,)=> Authention() ));
        },
        pageButtonTextStyles: TextStyle(
          color: Colors.black,
          fontSize: 18.0,
        ),
      ), //IntroViewsFlutter
    ); //Builder
  }
}
