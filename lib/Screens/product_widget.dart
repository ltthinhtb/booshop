import 'package:flutter/material.dart';
import 'package:flutter_app/Screens/productDetails.dart';



// ignore: must_be_immutable
class ProductWidget extends StatelessWidget {

  final
  String image;
  String caption;
  String price;

  ProductWidget({Key key,this.image,this.caption,this.price }) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute (builder: (context)=> ProductDetails(
              productdetails_caption: caption,
              productdetails_image: image,
              productdetails_price: price,
            )));
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Stack(
              alignment: Alignment.bottomCenter,
              overflow: Overflow.clip,
              children: <Widget>[
              Hero(
                  tag: caption,
                  child: Image(image: NetworkImage(image),
                    fit: BoxFit.cover,
                    height: double.infinity,
                    width: double.infinity,)
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
      ),
    );
  }

}



