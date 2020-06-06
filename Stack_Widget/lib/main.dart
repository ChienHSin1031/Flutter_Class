//Part C 實作堆疊 將一個圖片 加入 title
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Stack 實做 Demo")),
        body: LayOut(),
      ),
    );
  }
}

class LayOut extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
        scrollDirection: Axis.horizontal,
      children: <Widget>[
        Center(
          child: Container(
            width: 300.0,
            height: 450.0,
            child: Stack(children: <Widget>[
              Align(
                alignment: Alignment(0, 0),
                child: Container(
                  width: 250.0,
                  height: 350.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.0),
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://scontent.fkhh1-2.fna.fbcdn.net/v/t1.0-9/52597953_2001993416521464_1196313086751932416_n.jpg?_nc_cat=111&_nc_sid=85a577&_nc_ohc=CXgrZL4EQVEAX_-PF7F&_nc_ht=scontent.fkhh1-2.fna&oh=96768eae7903c149c7eafd1ed6f23140&oe=5EFFE3E2"),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
              Align(
                alignment: Alignment(0, 0.7),
                child: Text(
                  "豆豆在這裡",
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.pinkAccent,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Align(
                alignment: Alignment(0, -1),
                child: Text(
                  "實況主",
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold),
                ),
              )
            ]),
          ),
        ),
        Center(
          child: Container(
            width: 300.0,
            height: 450.0,
            child: Stack(children: <Widget>[
              Align(
                alignment: Alignment(0, 0),
                child: Container(
                  width: 250.0,
                  height: 350.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.0),
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://scontent.frmq3-2.fna.fbcdn.net/v/t1.0-9/s960x960/83889172_2817131755081491_1222827259899936768_o.jpg?_nc_cat=107&_nc_sid=2d5d41&_nc_ohc=vzCG6JBfj74AX-d6Sij&_nc_ht=scontent.frmq3-2.fna&_nc_tp=7&oh=ca94d89b061fcd409cfe8b40e6b522d1&oe=5F016650"),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
              Align(
                alignment: Alignment(0, 0.7),
                child: Text(
                  "Zoe",
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.pinkAccent,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Align(
                alignment: Alignment(0, -1),
                child: Text(
                  "實況主",
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold),
                ),
              )
            ]),
          ),
        ),
      ],
    );
  }
}

//Part B Stack > 2 Widget  層疊排版
// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home: Scaffold(
//       appBar: AppBar(
//         title: Text("Stack >2 Widget Demo"),
//       ),
//       body: LayOut(),
//     ));
//   }
// }

// class LayOut extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Container(   //基底 利用此Container 對內部 Widget 排版
//         width: 300.0,
//         height: 400.0,
//         color: Colors.blueAccent,
//         child: Stack(   //層疊 widget 相對於外面Container 做層疊排版
//           // alignment: Alignment.center,
//           children: <Widget>[      //Stack 內的
//             Align(  // >2 種 Widget 各別使用 Align 定義位置
//               alignment: Alignment(-1, 1),
//               child:Icon(Icons.home, size: 40.0, color:Colors.grey),
//             ),
//             Align(
//               alignment: Alignment(-0.7, 1),
//               child:Icon(Icons.settings, size: 40.0, color:Colors.red),
//             ),
//             Align(
//               alignment: Alignment(-0.4, 1),
//               child:Icon(Icons.category, size: 40.0, color:Colors.pink),
//             ),
//             Align(
//               alignment: Alignment(-0.1, 1),
//               child:Icon(Icons.home, size: 40.0, color:Colors.grey),
//             ),
//             Align(
//               alignment: Alignment(0.2, 1),
//               child: Container(
//                 width: 40.0,
//                 height: 40.0,
//                 decoration: BoxDecoration(       // 圓形圖片
//                   borderRadius: BorderRadius.circular(150),  //150 為圓形 參考Image_Widget
//                   image: DecorationImage(image: NetworkImage("https://scontent.fkhh1-2.fna.fbcdn.net/v/t1.0-9/52597953_2001993416521464_1196313086751932416_n.jpg?_nc_cat=111&_nc_sid=85a577&_nc_ohc=CXgrZL4EQVEAX_-PF7F&_nc_ht=scontent.fkhh1-2.fna&oh=96768eae7903c149c7eafd1ed6f23140&oe=5EFFE3E2"),
//                                           fit: BoxFit.cover),

//                 ),
//               ),
//             )

//           ],
//         ),
//       ),
//     );
//   }
// }

//Part A Stack Widget 層疊 Widget
//只能使用在二個 Widget 可使用
// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Stack Demo"),
//         ),
//         body: LayOut(),
//       ),
//     );
//   }
// }

// class LayOut extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Stack(
//         alignment: Alignment(0, -1), //0,0 x,y 0~-1
//         //alignment: Alignment.center,
//         children: <Widget>[
//           Container(width: 300.0, height: 400.0, color: Colors.blueAccent),
//           Text(
//             "test Stack Widget",
//             style: TextStyle(
//               color: Colors.red,
//               fontSize: 40.0,
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
