import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          height: 233.0,
          child: Carousel(
            boxFit: BoxFit.cover,
            images: [
              Image.asset('assets/img/home/baner1.jpg'),
              Image.asset('assets/img/home/baner2.jpg'),
              Image.asset('assets/img/home/baner3.jpg'),
              Image.asset('assets/img/home/baner4.jpg')
            ],
            dotSize: 2.0,
            dotIncreaseSize: 2.0,
            autoplay: false,
            dotColor: Colors.white,
          ),
        ),
      ],
    );
  }
}
