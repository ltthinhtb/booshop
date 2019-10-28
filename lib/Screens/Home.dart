import 'package:flutter/material.dart';
import 'package:flutter_app/Screens/About.dart';
import 'package:flutter_app/Screens/Authention.dart';
import 'package:flutter_app/Screens/MainPage.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String title;

  int currentIndex = 0;
  /// Set a type current number a layout class
  Widget callPage(int current) {
    switch (current) {
      case 0:
        return new MainPage();
      case 1:
        return new Scaffold();
      case 2:
        return new Scaffold();
      case 3:
        return new Authention();
        break;
      default:
        return MainPage();
    }
  }
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        primaryColor: Colors.white,
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Container(alignment: Alignment.center,
            child: Text('RICARDO', style: TextStyle(color: Colors.black,fontFamily: 'Sans',fontWeight: FontWeight.w900),)),
          backgroundColor: Colors.white,
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Icon(Icons.search, color: Colors.black,size: 30.0,),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Icon(Icons.shopping_cart, color: Colors.teal, size: 30.0,),
            )
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              InkWell(
                child: ListTile(
                    title: Text('RICARDO',style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Sans',
                      fontWeight: FontWeight.w900,
                      fontSize: 40.0,
                      letterSpacing: 0.4,),),
                    leading: Image.asset('assets/img/logo.jpg')
                ),
              ),
              Divider(),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage()));
                },
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text('Nam',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w500),),
                ),
              ),
              Divider(),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage()));
                },
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text('Nữ',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w500),),
                ),
              ),
              Divider(),
              GestureDetector(
                onTap: (){},
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text('HÀNG MỚI',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w500)),
                ),
              ),
              Divider(),
              ExpansionTile(
                title: Text('COLLECTION',style: TextStyle(fontSize: 20.0),),
                children: <Widget>[
                  ListTile(
                    title: Text('MADE IN THE STREET',style: TextStyle(fontSize: 15.0)),
                  ),
                  ListTile(
                    title: Text('MARVEL',style: TextStyle(fontSize: 15.0)),
                  ),
                  ListTile(
                    title: Text('LEGENDS OF VIET NAM',style: TextStyle(fontSize: 15.0)),
                  ),
                  ListTile(
                    title: Text('RICARDO x LỘN XỘN BAND',style: TextStyle(fontSize: 15.0)),
                  ),
                  ListTile(
                    title: Text('BACK TO 80-s',style: TextStyle(fontSize: 15.0)),
                  ),
                ],
              ),
              Divider(),
              ExpansionTile(
                title: Text('QUẦN ÁO',style: TextStyle(fontSize: 20.0),),
                children: <Widget>[
                  ListTile(
                    title: Text('áo nỉ & hoodies',style: TextStyle(fontSize: 15.0)),
                  ),
                  ListTile(
                    title: Text('áo phông',style: TextStyle(fontSize: 15.0)),
                  ),
                  ListTile(
                    title: Text('áo thun dai tay',style: TextStyle(fontSize: 15.0)),
                  ),
                  ListTile(
                    title: Text('áo len',style: TextStyle(fontSize: 15.0)),
                  ),
                  ListTile(
                    title: Text('áo khoác',style: TextStyle(fontSize: 15.0)),
                  ),
                  ListTile(
                    title: Text('áo khoác nỉ',style: TextStyle(fontSize: 15.0)),
                  ),
                  ListTile(
                    title: Text('áo ba lỗ',style: TextStyle(fontSize: 15.0)),
                  ),
                  ListTile(
                    title: Text('áo sơ mi',style: TextStyle(fontSize: 15.0)),
                  ),
                  ListTile(
                    title: Text('quần jeans',style: TextStyle(fontSize: 15.0)),
                  ),
                  ListTile(
                    title: Text('quần short',style: TextStyle(fontSize: 15.0)),
                  ),
                  ListTile(
                    title: Text('quần dài',style: TextStyle(fontSize: 15.0)),
                  ),
                  ListTile(
                    title: Text('quần kaki',style: TextStyle(fontSize: 15.0)),
                  ),
                  ListTile(
                    title: Text('quần jogger',style: TextStyle(fontSize: 15.0)),
                  ),
                  ListTile(
                    title: Text('GRAPHIC',style: TextStyle(fontSize: 15.0)),
                  ),
                ],
              ),
              Divider(),
              GestureDetector(
                onTap: (){},
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text('GIÀY',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w500),),
                ),
              ),
              Divider(),
              ExpansionTile(
                title: Text('PHỤ KIỆN', style: TextStyle(fontSize: 20.0),),
                children: <Widget>[
                  ListTile(
                    title: Text('tất cả',style: TextStyle(fontSize: 15.0)),
                  ),
                  ListTile(
                    title: Text('mũ',style: TextStyle(fontSize: 15.0)),
                  ),
                  ListTile(
                    title: Text('túi',style: TextStyle(fontSize: 15.0)),
                  ),
                ],
              ),
              Divider(),
              SizedBox(height: 20.0,),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> AboutPage()));
                },
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text('ABOUT',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w500),),
                ),
              ),
            ],
          ),
        ),
        body: callPage(currentIndex),
        bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
                canvasColor: Colors.white,
                textTheme: Theme.of(context).textTheme.copyWith(
                    caption: TextStyle(color: Colors.black26.withOpacity(0.15)))),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: currentIndex,
              fixedColor: Colors.black,
              onTap: (value) {
                currentIndex = value;
                setState(() {});
              },
              items: [
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home,
                      size: 23.0,
                    ),
                    title: Text(
                      "Home",
                      style: TextStyle(letterSpacing: 0.5),
                    )),
                BottomNavigationBarItem(
                    icon: Icon(Icons.category),
                    title: Text(
                      "Category",
                      style: TextStyle( letterSpacing: 0.5),
                    )),
                BottomNavigationBarItem(
                    icon: Icon(Icons.notifications),
                    title: Text(
                      "Thông báo",
                      style: TextStyle( letterSpacing: 0.5),
                    )),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.person,
                      size: 24.0,
                    ),
                    title: Text(
                      "Tài Khoản",
                      style: TextStyle( letterSpacing: 0.5),
                    )),
              ],
            )),
      ),
    );
  }
}


