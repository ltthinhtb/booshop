import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter_app/Screens/collection.dart';


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
        Collection_winter(),
        Image.asset("assets/img/back.jpg"),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Text("Công ty cổ phần thương mại",
              style: TextStyle(
                  fontSize: 20,
              ),
            )
          ),
        ),
        Image.asset("assets/img/license.jpg"),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text("Địa chỉ: Ngõ 68 Cầu Giấy",style: TextStyle(fontSize: 20),),
        ),
        SizedBox(height: 20,)
      ],
    );
  }
}


