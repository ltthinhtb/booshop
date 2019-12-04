import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {

  // ignore: non_constant_identifier_names
  final String productdetails_caption;

  // ignore: non_constant_identifier_names
  final String productdetails_image;

  // ignore: non_constant_identifier_names
  final String productdetails_price;

  // ignore: non_constant_identifier_names
  const ProductDetails({Key key, this.productdetails_caption, this.productdetails_image, this.productdetails_price}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        primaryColor: Colors.white,
      ),
      child: Scaffold(
        appBar: AppBar(

        ),
        body: ListView(
          children: <Widget>[
            Container(
                height: 400,
                child: Image.network(productdetails_image,fit: BoxFit.cover,)),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(productdetails_caption, style: TextStyle(fontSize: 25,),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(productdetails_price,style: TextStyle(fontSize: 25,)),
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left : 10.0, top: 5),
                  child: Text("Kích thước", style: TextStyle(fontSize: 20),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5, left: 150 , right: 10),
                  child: Text("Bảng size",style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic,decoration: TextDecoration.underline,color: Colors.blue),),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 8,left: 5),
                  child: Container(
                    width: 28,
                    margin: EdgeInsets.all(4),
                    height: 28,
                    padding: EdgeInsets.only(top: 6),
                    child: Text(
                      "26",
                      textAlign: TextAlign.center,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(),
                        shape: BoxShape.circle),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8,left: 5),
                  child: Container(
                    width: 28,
                    margin: EdgeInsets.all(4),
                    height: 28,
                    padding: EdgeInsets.only(top: 6),
                    child: Text(
                      "27",
                      textAlign: TextAlign.center,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(),
                        shape: BoxShape.circle),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8,left: 5),
                  child: Container(
                    width: 28,
                    margin: EdgeInsets.all(4),
                    height: 28,
                    padding: EdgeInsets.only(top: 6),
                    child: Text(
                      "28",
                      textAlign: TextAlign.center,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(),
                        shape: BoxShape.circle),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8,left: 5),
                  child: Container(
                    width: 28,
                    margin: EdgeInsets.all(4),
                    height: 28,
                    padding: EdgeInsets.only(top: 6),
                    child: Text(
                      "29",
                      textAlign: TextAlign.center,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(),
                        shape: BoxShape.circle),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8,left: 5),
                  child: Container(
                    width: 28,
                    margin: EdgeInsets.all(4),
                    height: 28,
                    padding: EdgeInsets.only(top: 6),
                    child: Text(
                      "30",
                      textAlign: TextAlign.center,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(),
                        shape: BoxShape.circle),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left : 10.0, top: 5),
              child: Text("Số lượng",style: TextStyle(fontSize: 20),),
            ),
            Container(
              child: new Center(
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    new IconButton(icon: Icon(Icons.add,size: 30,), onPressed: (){}),

                    new Text('0',
                        style: new TextStyle(fontSize: 50.0)),

                    new IconButton(
                        onPressed: (){},
                        icon: new Icon(
                          IconData(0xe15b, fontFamily: 'MaterialIcons'),
                          size: 30,
                        )
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)
                ),
                padding: const EdgeInsets.all(16.0),
                color: Colors.teal,
                child: Text("Thêm vào giỏ hàng", style: TextStyle(
                    color: Colors.white
                ),),
                onPressed: (){},
              ),
            ),
          ],
        ),
      ),
    );
  }


}

