import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter_app/util/product.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: ClampingScrollPhysics(),
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
        Container(
          alignment: Alignment.center,
          child: Padding(padding: EdgeInsets.all(8.0),
            child: Text("THU ĐÔNG", style: TextStyle(fontSize: 30.0,decoration: TextDecoration.underline,fontWeight: FontWeight.bold),),),
        ),
        Collection_winter()
      ],
    );
  }
}


