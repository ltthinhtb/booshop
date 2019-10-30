import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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

  Widget getCustomContainer() {
    switch (selectedWidgetMarker) {
      case WidgetMarker.collection1:
        return collection1Container1();
      case WidgetMarker.collection2:
        return collection2Container();
      case WidgetMarker.collection3:
        return collection3Container();
      case WidgetMarker.collection4:
        return collection4Container();
    }
  }

  Widget collection1Container1() {
    return FadeTransition(
      opacity: _animation,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          physics: NeverScrollableScrollPhysics(),
          crossAxisCount: 2,
          childAspectRatio: 0.798,
          mainAxisSpacing: 16.0,
          crossAxisSpacing: 16.0,
          children: <Widget>[
            ProductWidget(
              image: 'https://product.hstatic.net/1000299894/product/1.2.19.2.14.006.219.01.10600058___1__2b0c17918efa444488d25eaf7a547c07.jpg',
              price: "499,000₫",
              caption: "ÁO NỈ KHÔNG MŨ NAM LOOSE XỎA GẤU",
            ),
            ProductWidget(
              image: 'https://product.hstatic.net/1000299894/product/1.2.19.2.14.006.219.01.11300012___2__24787d212d7d4dc1beb32f75da403c70.jpg',
              price: "499,000₫",
              caption: "ÁO NỈ KHÔNG MŨ NAM LOOSE XỎA GẤU",
            ),
            ProductWidget(
              image: 'https://product.hstatic.net/1000299894/product/1.2.19.2.14.007.219.01.10700013___2__2e08e8533e3f4bc98add522d095626c0.jpg',
              price: "499,000₫",
              caption: "ÁO NỈ KHÔNG MŨ NAM LOOSE PHỐI 2 TAY",
            ),
            ProductWidget(
              image: 'https://product.hstatic.net/1000299894/product/1.2.19.2.02.020.219.01.10200011___3__7725a55269974ab48a4901d03a76cb7f.jpg',
              price: "549,000₫",
              caption: "ÁO NỈ KHÔNG MŨ NAM LOGO L BACK TO THE ROOT",
            ),
          ],
          shrinkWrap: true,
        ),
      ),
    );
  }
  Widget collection2Container() {
    return FadeTransition(
      opacity: _animation,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          physics: NeverScrollableScrollPhysics(),
          crossAxisCount: 2,
          childAspectRatio: 0.798,
          mainAxisSpacing: 16.0,
          crossAxisSpacing: 16.0,
          children: <Widget>[
            ProductWidget(
              image: 'https://product.hstatic.net/1000299894/product/1.2.05.2.02.006.219.01.10200011___6__b1930357763f4ed7860a1227c369a8a5.jpg',
              price: "699,000₫",
              caption: "ÁO KHOÁC NỈ NAM MARVEL LOGO",
            ),
            ProductWidget(
              image: 'https://product.hstatic.net/1000299894/product/1.2.05.2.02.002.219.01.10200011___4__6f4a99239ff24ebbb19c3ea14e38d2d6.jpg',
              price: "649,000₫",
              caption: "ÁO KHOÁC NỈ NAM ICON ABOUTBOO.",
            ),
            ProductWidget(
              image: 'https://product.hstatic.net/1000299894/product/1.2.05.2.05.006.219.01.10300019___6__cad906dfdab94502bf61fa20d428bd8b.jpg',
              price: "549,000₫",
              caption: "ÁO KHOÁC NỈ NAM REGULAR PHỐI CÚC CÀI",
            ),
            ProductWidget(
              image: 'https://product.hstatic.net/1000299894/product/1.2.05.2.05.006.219.01.10500014___3__ab8c076bbe9848058d8d2deacfc192e9.jpg',
              price: "549,000₫",
              caption: "ÁO KHOÁC NỈ NAM REGULAR PHỐI CÚC CÀI",
            ),
          ],
          shrinkWrap: true,
        ),
      ),
    );
  }
  Widget collection3Container() {
    return FadeTransition(
      opacity: _animation,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          physics: NeverScrollableScrollPhysics(),
          crossAxisCount: 2,
          childAspectRatio: 0.798,
          mainAxisSpacing: 16.0,
          crossAxisSpacing: 16.0,
          children: <Widget>[
            ProductWidget(
              image: 'https://product.hstatic.net/1000299894/product/1.2.04.2.02.009.219.01.10200011_cd563faf895b488ab8d1b02c7f789524.jpg',
              price: "449,000₫",
              caption: "ÁO THUN DÀI TAY NAM LOGO BOO",
            ),
            ProductWidget(
              image: 'https://product.hstatic.net/1000299894/product/1.2.05.2.02.002.219.01.10200011___4__6f4a99239ff24ebbb19c3ea14e38d2d6.jpg',
              price: "549,000₫",
              caption: "ÁO PHÔNG DÀI TAY NAM BLACK PANTHER",
            ),
            ProductWidget(
              image: 'https://product.hstatic.net/1000299894/product/1.2.04.2.02.001.219.01.10200011___4__d5407b4cd729434bbbd893062cf2acd3.jpg',
              price: "499,000₫",
              caption: "ÁO THUN DÀI TAY NAM BUSTICKERS CỤC VÀNG TRÊN CỎ",
            ),
            ProductWidget(
              image: 'https://product.hstatic.net/1000299894/product/1.2.04.2.02.002.219.01.10400011___2__123bc474584a464aada545ea5ffe6dea.jpg',
              price: "499,000₫",
              caption: "ÁO THUN DÀI TAY NAM BUSTICKERS COP PORN",
            ),
          ],
          shrinkWrap: true,
        ),
      ),
    );
  }
  Widget collection4Container() {
    return FadeTransition(
      opacity: _animation,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          physics: NeverScrollableScrollPhysics(),
          crossAxisCount: 2,
          childAspectRatio: 0.798,
          mainAxisSpacing: 16.0,
          crossAxisSpacing: 16.0,
          children: <Widget>[
            ProductWidget(
              image: 'https://product.hstatic.net/1000299894/product/1.2.21.2.14.002.219.23.10600033___2__8524b090385f41a5b72a633eafdee498.jpg',
              price: "699,000₫",
              caption: "QUẦN JEANS NAM RELAX TÚI TRANG TRÍ",
            ),
            ProductWidget(
              image: 'https://product.hstatic.net/1000299894/product/1.2.21.2.14.002.219.23.10600044___6__593319a636f54ecab62422caaad0cd16.jpg',
              price: "699,000₫",
              caption: "QUẦN JEANS NAM RELAX TÚI TRANG TRÍ",
            ),
            ProductWidget(
              image: 'https://product.hstatic.net/1000299894/product/1.2.21.2.04.004.219.23.10600034___2__d26fbbb915884792a2447ddd09b6842e.jpg',
              price: "699,000₫",
              caption: "QUẦN JEANS NAM SLIMFIT RÁCH GỐI",
            ),
            ProductWidget(
              image: 'https://product.hstatic.net/1000299894/product/1.2.21.2.04.004.219.23.10600033___1__8087aeb50d76485a9eb052b25f8451f8.jpg',
              price: "699,000₫",
              caption: "QUẦN JEANS NAM SLIMFIT RÁCH GỐI",
            ),
          ],
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
          )
        ],
      ),
    );
  }

}

// ignore: must_be_immutable
class ProductWidget extends StatelessWidget {

  String image;
  String caption;
  String price;

  ProductWidget({Key key,this.image,this.caption,this.price }) : super(key:key);



  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){} ,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Stack(
          alignment: Alignment.bottomCenter,
          overflow: Overflow.clip,
          children: <Widget>[
            Hero(
              tag: "product_$caption",
              child: Image.network(image,
                fit: BoxFit.cover,
                height: double.infinity,
                width: double.infinity,
              ),
            ),
            Container(
              color: Color(0x47000000),
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      caption,
                      style: TextStyle(color: Colors.white, fontSize: 12.0),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                           price,
                          style: TextStyle(color: Colors.white, fontSize: 10.0),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

}



