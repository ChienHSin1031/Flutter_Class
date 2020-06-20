// Part C 利用底部導航 分別在點擊時改變頁面
import 'package:flutter/material.dart';
import 'pages/Tabs.dart';  
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Tabs(),
    );
  }
}



//Part B  Scaffold 內 ButtonNavigationBar 點擊時即時渲染頁面方式
// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Tabs(),
//     );
//   }
// }

// class Tabs extends StatefulWidget {
//   Tabs({Key key}) : super(key: key);

//   @override
//   _TabsState createState() => _TabsState();
// }

// class _TabsState extends State<Tabs> {
//   int _currentIndex = 0;  //定義一個私有變數 判斷選擇到哪個
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: (AppBar(title: Text("ButtonNavigationBar Demo02"),)),
//       body: Text("I want know"),
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: this._currentIndex,
//         onTap:(int index){    //底部導航點擊時要做的事，點擊後會傳入一個點擊到的 index，從 0 開始
//           setState(() {    //setState 可及時從新渲染
//             this._currentIndex = index;
//           });
//         },

//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             title: Text("首頁")
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.category),
//             title: Text("分類")
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.settings),
//             title: Text("設定")
//           ),
//         ]
//       ),
//     );
//   }
// }

// Part A basic ButtonNavigationBar Widget
// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Tabs(),
//     );
//   }
// }

// class Tabs extends StatefulWidget {
//   Tabs({Key key}) : super(key: key);

//   @override
//   _TabsState createState() => _TabsState();
// }

// class _TabsState extends State<Tabs> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("ButtonNavigationBar Demo")),
//       body: Text("taBar"),
//       bottomNavigationBar: BottomNavigationBar(
//           currentIndex: 1,
//           onTap: (int index) {
//             print(index);
//           },
//           items: [
//             BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("首頁")),
//             BottomNavigationBarItem(
//                 icon: Icon(Icons.category), title: Text("分類")),
//             BottomNavigationBarItem(
//                 icon: Icon(Icons.settings), title: Text("設定")),
//           ]),
//     );
//   }
// }
