import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        primaryColor: Colors.white
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Giỏ hàng của tôi",style: TextStyle(fontSize: 25),),
        ),
        body: Container(
          alignment: Alignment.bottomCenter,
          child: SizedBox(
            width: double.infinity,
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)
              ),
              padding: const EdgeInsets.all(16.0),
              color: Colors.teal,
              child: Text("Đặt Hàng", style: TextStyle(
                  color: Colors.white
              ),),
              onPressed: (){
              },
            ),
          ),
        ),
      ),
    );
  }
}
