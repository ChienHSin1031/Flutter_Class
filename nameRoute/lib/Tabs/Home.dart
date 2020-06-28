import 'package:flutter/material.dart';
// import '../pages/datasheet.dart';   //命名路由就不須要在這引入
// import '../pages/product.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: 10.0),
          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/datasheet', arguments: {
                //寫入要傳送的參數 Write the map Type on arguments
                "id": 123,
              }); //命名路由寫法
            },
            child: Text("go to datasheet"),
          ),
          SizedBox(height: 10.0),
          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/product'); //命名路由寫法
            },
            child: Text("go to product Page"),
          ),
          SizedBox(height: 10.0),
          RaisedButton(
            child: Text("go to appBar Demo"),
            onPressed: () {
              Navigator.pushNamed(context, '/appBarDemo');
            },
          ),
          SizedBox(height: 10.0),
          RaisedButton(
            child: Text("go to TabBarController Demo"),
            onPressed: () {
              Navigator.pushNamed(context, '/tabBarController');
            },
          ),
          SizedBox(height: 10.0),
        ],
      ),
    );
  }
}
