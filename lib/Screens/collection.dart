import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/Screens/listproduct.dart';
import 'package:flutter_app/Screens/product_widget.dart';
import 'package:flutter_app/util/data.dart';

enum WidgetMarker {collection1, collection2, collection3, collection4}

// ignore: camel_case_types
class Collection_winter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BodyWidget();
  }
}


class BodyWidget extends StatefulWidget {
  @override
  _BodyWidgetState createState() => _BodyWidgetState();
}

class _BodyWidgetState extends State<BodyWidget> with SingleTickerProviderStateMixin{
  WidgetMarker selectedWidgetMarker = WidgetMarker.collection1;
  AnimationController _controller;
  Animation _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  _playAnimation() {
    _controller.reset();
    _controller.forward();
  }

  // ignore: missing_return
  Widget getCustomContainer() {
    switch (selectedWidgetMarker) {
      case WidgetMarker.collection1:
        return collection1Container();
      case WidgetMarker.collection2:
        return collection2Container();
      case WidgetMarker.collection3:
        return collection3Container();
      case WidgetMarker.collection4:
        return collection4Container();
    }
  }

  Widget collection1Container() {
    return FadeTransition(
      opacity: _animation,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: product_collection1.length,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (BuildContext context,int index){
            return ProductWidget(
              image: product_collection1[index]["image"],
              caption: product_collection1[index]["caption"],
              price: product_collection1[index]["price"],
            );
          },
          shrinkWrap: true,
        ),
      ),
    );
  }
  Widget collection2Container() {
    return FadeTransition(
      opacity: _animation,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: product_collection2.length,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (BuildContext context,int index){
            return ProductWidget(
              image: product_collection2[index]["image"],
              caption: product_collection2[index]["caption"],
              price: product_collection2[index]["price"],
            );
          },
          shrinkWrap: true,
        ),
      ),
    );
  }
  Widget collection3Container() {
    return FadeTransition(
      opacity: _animation,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: product_collection3.length,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (BuildContext context,int index){
            return ProductWidget(
              image: product_collection3[index]["image"],
              caption: product_collection3[index]["caption"],
              price: product_collection3[index]["price"],
            );
          },
          shrinkWrap: true,
        ),
      ),
    );
  }
  Widget collection4Container() {
    return FadeTransition(
      opacity: _animation,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: product_collection4.length,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (BuildContext context,int index){
            return ProductWidget(
              image: product_collection4[index]["image"],
              caption: product_collection4[index]["caption"],
              price: product_collection4[index]["price"],
            );
          },
          shrinkWrap: true,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            //height: 30,
            child: Column(
             // scrollDirection: Axis.horizontal,
              children: <Widget>[
                GestureDetector(
                  onTap: (){
                    setState(() {
                      selectedWidgetMarker = WidgetMarker.collection1;
                    });
                  },
                  child: InkWell(
                    child: Text("Áo Nỉ& HOODIES",style: TextStyle(fontSize: 20),),
                  ),
                ),
                SizedBox(height: 5,),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      selectedWidgetMarker = WidgetMarker.collection2;
                    });
                  },
                  child: InkWell(
                    child: Text("ÁO KHOÁC NỈ",style: TextStyle(fontSize: 20),),
                  ),
                ),
                SizedBox(height: 5,),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      selectedWidgetMarker = WidgetMarker.collection3;
                    });
                  },
                  child: InkWell(
                    child: Text("ÁO THUN DÀI TAY",style: TextStyle(fontSize: 20),),
                  ),
                ),
                SizedBox(height: 5,),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      selectedWidgetMarker = WidgetMarker.collection4;
                    });
                  },
                  child: InkWell(
                    child: Text("QUẦN JEANS",style: TextStyle(fontSize: 20),),
                  ),
                ),
                SizedBox(height: 5,),
              ],
            ),
          ),
          Container(
            child: FutureBuilder(
              future: _playAnimation(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                return getCustomContainer();
              },
            ),
          ),
          SizedBox(
            height: 50,
            child: Center(
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)
                ),
                padding: const EdgeInsets.all(16.0),
                color: Colors.teal,
                child: Text("XEM TẤT CẢ SẢN PHẨM", style: TextStyle(
                    color: Colors.white
                ),),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute (builder: (context)=> ListProducttPage(title: "Tất cả sản phẩm",)));
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

}

// ignore: must_be_immutable


