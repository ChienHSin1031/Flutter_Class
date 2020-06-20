import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  String title = '表單';
  ProductPage({this.title = "表單"});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(   //Scaffold 內的浮動按鈕 通常放置在右下角
        child: Text("Return"),
        onPressed: (){
          Navigator.of(context).pop();  //返回上一頁面
        },
      ),
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: Column(
        children: <Widget>[
          ListTile(
            title: Text("商品一"),
          ),
          ListTile(
            title: Text("商品一"),
          ),
          ListTile(
            title: Text("商品一"),
          ),
          ListTile(
            title: Text("商品一"),
          ),
          ListTile(
            title: Text("商品一"),
          ),
        ],
      ),
    );
  }
}
