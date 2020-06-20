import 'package:flutter/material.dart';

import 'tabs/Category.dart';
import 'tabs/Home.dart';
import 'tabs/Setting.dart';

class Tabs extends StatefulWidget {
  Tabs({Key key}) : super(key: key);

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;
  List _pageList = [  //上面需要import 各頁面
    HomePage(),     // 將各頁面寫成一個 List 方便呼叫
    CategortPage(),
    SettingPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("NavigationBar 即時更換頁面"),),
      body: this._pageList[this._currentIndex],  //利用下方點擊傳入的index,來切換頁面必須要排序好
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 50.0,
        backgroundColor: Colors.yellow,
        fixedColor: Colors.green,
        currentIndex: this._currentIndex,    //默認的頁面
        type: BottomNavigationBarType.fixed,  //超過3個按鈕時必須設定為fixed，可顯示超過3個按鈕

        onTap: (int index){
          setState(() {  //即時改變狀態寫法
            this._currentIndex = index;  //將點擊到的index 傳入 _currentIndex
          });
        },
        
        items: [        //底部的按鈕資訊
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("首頁"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            title: Text("分類"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text("設定"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text("設定"),
          ),

        ]
      ),
    );
  }
}