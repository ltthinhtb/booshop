import 'package:flutter/material.dart';
import 'package:flutter_app/Screens/product_widget.dart';
import 'package:flutter_app/util/data.dart';

class ListProducttPage extends StatelessWidget {
  ListProducttPage( {Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
          primaryColor: Colors.white
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(title,style: TextStyle(fontSize: 25),),
        ),
        body: GridView.builder(
          itemCount: new_product.length,
          gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (BuildContext context,int index){
            return ProductWidget(
              image: new_product[index]["image"],
              caption: new_product[index]["caption"],
              price: new_product[index]["price"],
            );
          },
          shrinkWrap: true,
        ),
      ),
    );
  }
}
