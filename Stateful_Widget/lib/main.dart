//PartB 按鈕按下 會新增數據
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Stateful Widget demo02"),
      ),
      body: LayOut(),
    ));
  }
}

class LayOut extends StatefulWidget {    //動態更改數據必須繼承 StatefulWidget
  LayOut({Key key}) : super(key: key);

  @override
  _LayOutState createState() => _LayOutState();
}

class _LayOutState extends State<LayOut> {
  List list = new List();      //定義數據 Type 
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Column(
          children: this.list.map((value) {  //顯示數據的方式
            return ListTile(
              title: Text(value),
            );
          }).toList(),
        ),
        SizedBox(
          height: 20.0,
        ),
        RaisedButton(
            child: Text("Button"),
            onPressed: () {
              setState(() {   //按鈕按下後新增的數據
                this.list.add("新增數據1");
                this.list.add("新增數據2");
              });
            }),
      ],
    );
  }
}
//Part A Stateful Widget 按鈕按完 +1
// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("Stateful Widget Demo")),
//         body: LayOut(),
//       )
//     );
//   }
// }

// class LayOut extends StatefulWidget {   //有狀態Widget
//   LayOut({Key key}) : super(key: key);

//   @override
//   _LayOutState createState() => _LayOutState();
// }

// class _LayOutState extends State<LayOut> {
//   int countNum = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget>[
//         SizedBox(height: 10.0,),
//         Chip(
//           label: Text("${this.countNum}")
//           ),
//         SizedBox(height: 10.0),
//         RaisedButton(
//           child: Text("Button"),
//           onPressed: (){
//             setState(() {   //只能在有狀態組件使用 必須繼承State
//               this.countNum++;
//             });
//           },
//         ),
//       ],
//     );
//   }
// }

// // Part A StatelessWidget 無法動態更改數據 錯誤寫法
// // import 'package:flutter/material.dart';

// // void main() => runApp(MyApp());

// // class MyApp extends StatelessWidget {
// //   const MyApp({Key key}) : super(key: key);

// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       home: Scaffold(
// //         appBar: AppBar(
// //           title: Text("Stateful_Widget_Demo"),
// //         ),
// //         body: LayOut(),
// //       ),
// //     );
// //   }
// // }

// // class LayOut extends StatelessWidget {
// //   int countNum = 0;

// //   @override
// //   Widget build(BuildContext context) {
// //     return Column(
// //       children: <Widget>[
// //         SizedBox(height: 200.0),
// //         Text("${this.countNum}"),
// //         SizedBox(height: 10.0),
// //         RaisedButton(
// //           child: Text("leave"),
// //           onPressed: () {
// //             this.countNum++;
// //             print(this.countNum);
// //           },
// //         )
// //       ],
// //     );
// //   }
// // }
