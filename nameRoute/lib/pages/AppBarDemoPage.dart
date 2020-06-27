import 'package:flutter/material.dart';

class AppBarDemoPage extends StatelessWidget {
  const AppBarDemoPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(tabs: <Widget>[
            Tab(
              text: "熱門商品",
            ),
            Tab(
              text: "推薦商品",
            ),
          ]),
          centerTitle: true, //標題居中顯示
          title: Text("Tab Bar Demo Page"),
          backgroundColor: Colors.greenAccent,
          // leading: IconButton( // leading : 左上Tab圖標
          //   icon: Icon(Icons.menu),
          //   onPressed: () {
          //     print('menu');
          //   },
          // ),
          actions: <Widget>[
            //actions : 右上Tab圖標
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                print('menu');
              },
            ),
            IconButton(
              icon: Icon(Icons.category),
              onPressed: () {
                print('category');
              },
            ),
          ],
        ),
        body: TabBarView(children: <Widget>[   //針對bottom: TabBar 的順序,依序顯示TabBarView 內的 Widget 
          ListView(children: <Widget>[
            ListTile(title: Text("第一個Tab")),
            ListTile(title: Text("第一個Tab")),
            ListTile(title: Text("第一個Tab")),
          ],
          ),
          ListView(children: <Widget>[
            ListTile(title: Text("第二個Tab")),
            ListTile(title: Text("第二個Tab")),
            ListTile(title: Text("第二個Tab")),
          ],
          )


        ],
        ),
      ),
    );
  }
}
