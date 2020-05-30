
//--------------------------------------------------
// Part D 套用本地圖片
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("加載本地圖片Demo")),
        body:  LayOut(),
      ),
    );
  }
}


class LayOut extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Center(
       child: Container(
         height: 300.0,
         width: 300.0,
         child: Image.asset('images/a.jpg'),
       ),
    );
  }
}



//--------------------------------------------------
// Part C 快速套用圓型圖片
// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title : Text("Flutter Demo")),
//         body: LayOut(),
//       ),
//     );
//   }
// }

// class LayOut extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//        child: Container(
//       //   width: 300.0,
//       //   height: 300.0,

//         child: ClipOval(   //將圖片處理成圓形
//           child: Image.network("https://scontent.frmq2-1.fna.fbcdn.net/v/t1.0-9/74848865_2437800872940714_5065245255058587648_o.jpg?_nc_cat=106&_nc_sid=dd9801&_nc_ohc=yRuun0saJKYAX9iwWAr&_nc_ht=scontent.frmq2-1.fna&oh=8ac7f800ab68a2744009589376ab2673&oe=5EF9AE1B",
//                                 height: 500,
//                                 width: 500,
//                                 fit: BoxFit.contain,
//                               ),
//         ),
//       ),
//     );
//   }
// }





//--------------------------------------------------
// Part B
// import 'package:flutter/material.dart';
// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("Fluuter Demo"),),
//         body:  LayOut(),
//       ),
//     );
//   }
// }

// class LayOut extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Container(
//         width: 300.0,
//         height: 300.0,
//         decoration: BoxDecoration(     //圓形Image寫法 二種
//           color: Colors.yellow,
//           //寫法一 
//           // borderRadius: BorderRadius.all(   
//           //   Radius.circular(150),  //150為圓形
//           // ),
//           borderRadius: BorderRadius.circular(150.0),
//           image: DecorationImage(
//             image: NetworkImage("https://scontent.ftpe7-2.fna.fbcdn.net/v/t1.0-9/52597953_2001993416521464_1196313086751932416_n.jpg?_nc_cat=111&_nc_sid=85a577&_nc_ohc=Zlfg0wmPuiAAX_Qo2IT&_nc_ht=scontent.ftpe7-2.fna&oh=6029926845976fc6253c349290205e8c&oe=5EF7FAE2"),
//             fit: BoxFit.cover,
//           ),
//         ),
//       ),
//     );
//   }
// }


//--------------------------------------------------
// Part A 
// import 'package:flutter/material.dart';
// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("flutter Demo")),
//         body: LayOut(),
//       ),
//     );
//   }
// }

// class LayOut extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Container(
//         width: 300.0,
//         height: 800.0,
//         decoration:  BoxDecoration(
//           color: Colors.pinkAccent
//         ),
//         child: Image.network("https://scontent.ftpe7-1.fna.fbcdn.net/v/t1.0-9/74848865_2437800872940714_5065245255058587648_o.jpg?_nc_cat=106&_nc_sid=dd9801&_nc_ohc=yRuun0saJKYAX9v4Dw9&_nc_ht=scontent.ftpe7-1.fna&oh=8845dd0540afc49f5a2399327d8c140e&oe=5EF9AE1B",
//                             alignment:  Alignment.center,//圖片位置
//                             color: Colors.grey,
//                             colorBlendMode: BlendMode.softLight, //混色效果softLight modulate hardLight colorBurn dst
//                             fit: BoxFit.contain,   //圖片縮放置容器大小且不變形
//                             repeat: ImageRepeat.repeatY,//重複放 x,y or xy軸
//                             ),
//       )
//     );
//   }
// }
