import 'package:flutter/material.dart';

import 'Tabs/Category.dart';
import 'Tabs/Home.dart';
import 'Tabs/Setting.dart';


class Tabs extends StatefulWidget {
  final index;

  Tabs({Key key, this.index = 0}) : super(key: key);

  @override
  _TabsState createState() => _TabsState(this.index);
}

class _TabsState extends State<Tabs> {
  int _currentIndex ;
  _TabsState(index){
    this._currentIndex = index;
  }
  List _pageList = [
    HomePage(),
    CategoryPage(),
    SettingPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Route Demo"),
      // ),
      body: this._pageList[this._currentIndex],   //選擇頁面
      bottomNavigationBar: BottomNavigationBar(

        iconSize: 40.0,
        fixedColor: Colors.greenAccent,
        currentIndex: this._currentIndex,
        onTap: (int index){
          setState(() {
            this._currentIndex = index;
          });
        },
        
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("首頁")),
          BottomNavigationBarItem(icon: Icon(Icons.category), title: Text("分類")),
          BottomNavigationBarItem(icon: Icon(Icons.settings), title: Text("設定")),
        ],
      ),
    );
  }
}
