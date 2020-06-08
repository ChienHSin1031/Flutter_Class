import 'res/listData.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Card Widget Demo"),
        ),
        body: LayOut(),
      ),
    );
  }
}

class LayOut extends StatelessWidget {
  const LayOut({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: listData.map((value) {     //動態產生列表
        return Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              AspectRatio(         //子元素寬高比 需要有主元素
                aspectRatio: 20 / 9,
                child: Image.network(value["imageUrl"]),
              ),
              ListTile(
                title: Text(value["title"]),
                subtitle: Text(value["author"],overflow: TextOverflow.ellipsis,),//字太多 處理方法
                leading: CircleAvatar(
                  //大頭照 寫法二  自動調整大小
                  backgroundImage: NetworkImage(value["imageUrl"]),
                ),
              ),
            ],
          ),
        );
      }).toList(),   //轉成 list 
    );
  }
}

//Part C Car Widget 圖片列表 最外層ListView >> Card >> Column >> Image + ListTile(title & subtitle & leading)
// import 'package:flutter/material.dart';
// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Card Widget Demo"),
//         ),
//         body: LayOut(),
//       ),
//     );
//   }
// }

// class LayOut extends StatelessWidget {
//   const LayOut({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       children: <Widget>[
//         Card(
//           margin: EdgeInsets.all(10),
//           child: Column(
//             children: <Widget>[
//               AspectRatio(
//                 aspectRatio: 20 / 10,
//                 child: Image.network(
//                     "https://scontent.fkhh1-1.fna.fbcdn.net/v/t1.0-9/s960x960/102741273_2827416524053014_3359650713821320922_o.jpg?_nc_cat=105&_nc_sid=2d5d41&_nc_ohc=jrfP6I0-JYwAX_U9roB&_nc_ht=scontent.fkhh1-1.fna&_nc_tp=7&oh=3042585ca185d5032c72b0094157f182&oe=5F038C38"),
//               ),
//               ListTile(
//                 title: Text("實況主 Zoe"),
//                 subtitle: Text("實況主 Zoe"),
//                 leading: ClipOval(  //大頭照 寫法一
//                   child: Image.network(
//                     "https://scontent.fkhh1-1.fna.fbcdn.net/v/t1.0-9/s960x960/96695713_2776912299103437_5477096764358000640_o.jpg?_nc_cat=105&_nc_sid=2d5d41&_nc_ohc=QnMMbIcBf6oAX_z4XZx&_nc_ht=scontent.fkhh1-1.fna&_nc_tp=7&oh=99dee2cc3054931a42fc3bbf736ce473&oe=5F040D74",
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//         Card(
//           margin: EdgeInsets.all(10),
//           child: Column(
//             children: <Widget>[
//               AspectRatio(
//                 aspectRatio: 20 / 10,
//                 child: Image.network(
//                     "https://scontent.fkhh1-1.fna.fbcdn.net/v/t1.0-0/p180x540/74848865_2437800872940714_5065245255058587648_o.jpg?_nc_cat=106&_nc_sid=dd9801&_nc_ohc=6dgBI0ZhVBcAX8vVQG5&_nc_ht=scontent.fkhh1-1.fna&_nc_tp=6&oh=443ed6e7b792ba713016949be1cb3b78&oe=5F03958E"),
//               ),
//               ListTile(
//                 title: Text("實況主 Zoe"),
//                 subtitle: Text("實況主 Zoe"),
//                 leading: CircleAvatar(   //大頭照 寫法二  自動調整大小
//                   backgroundImage: NetworkImage(
//                     "https://scontent.fkhh1-2.fna.fbcdn.net/v/t1.0-9/52597953_2001993416521464_1196313086751932416_n.jpg?_nc_cat=111&_nc_sid=85a577&_nc_ohc=CXgrZL4EQVEAX_-PF7F&_nc_ht=scontent.fkhh1-2.fna&oh=0a42df9fbbb8b107142c203dbfe3dbf5&oe=5F03D862",
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//         Card(
//           margin: EdgeInsets.all(10),
//           child: Column(
//             children: <Widget>[
//               AspectRatio(
//                 aspectRatio: 20 / 10,
//                 child: Image.network(
//                     "https://scontent.fkhh1-1.fna.fbcdn.net/v/t1.0-0/p180x540/74848865_2437800872940714_5065245255058587648_o.jpg?_nc_cat=106&_nc_sid=dd9801&_nc_ohc=6dgBI0ZhVBcAX8vVQG5&_nc_ht=scontent.fkhh1-1.fna&_nc_tp=6&oh=443ed6e7b792ba713016949be1cb3b78&oe=5F03958E"),
//               ),
//               ListTile(
//                 title: Text("實況主 Zoe"),
//                 subtitle: Text("實況主 Zoe"),
//                 leading: CircleAvatar(   //大頭照 感覺
//                   backgroundImage: NetworkImage(
//                     "https://scontent.fkhh1-2.fna.fbcdn.net/v/t1.0-9/52597953_2001993416521464_1196313086751932416_n.jpg?_nc_cat=111&_nc_sid=85a577&_nc_ohc=CXgrZL4EQVEAX_-PF7F&_nc_ht=scontent.fkhh1-2.fna&oh=0a42df9fbbb8b107142c203dbfe3dbf5&oe=5F03D862",
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }

//Part B Card Widget  名片模板
// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Card Widget Demo"),
//         ),
//         body: LayOut(),
//       ),
//     );
//   }
// }

// class LayOut extends StatelessWidget {
//   const LayOut({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       children: <Widget>[
//         Card(              //Card Widget
//           margin: EdgeInsets.all(10),
//           child: Column(
//             children: <Widget>[
//               ListTile(
//                 title: Text(
//                   "張三",
//                   style: TextStyle(fontSize: 30.0),
//                 ),
//                 subtitle: Text("高級工程師"),
//               ),
//               ListTile(
//                 title: Text("電話: 0987654321"),
//               ),
//               ListTile(
//                 title: Text("地址: 高雄小港區廠邊二路97巷15號"),
//               ),
//             ],
//           ),
//         ),
//         Card(
//           margin: EdgeInsets.all(10),
//           child: Column(
//             children: <Widget>[
//               ListTile(
//                 title: Text(
//                   "張三",
//                   style: TextStyle(fontSize: 30.0),
//                 ),
//                 subtitle: Text("高級工程師"),
//               ),
//               ListTile(
//                 title: Text("電話: 0987654321"),
//               ),
//               ListTile(
//                 title: Text("地址: 高雄小港區廠邊二路97巷15號"),
//               ),
//             ],
//           ),
//         ),
//         Card(
//           margin: EdgeInsets.all(10),
//           child: Column(
//             children: <Widget>[
//               ListTile(
//                 title: Text(
//                   "張三",
//                   style: TextStyle(fontSize: 30.0),
//                 ),
//                 subtitle: Text("高級工程師"),
//               ),
//               ListTile(
//                 title: Text("電話: 0987654321"),
//               ),
//               ListTile(
//                 title: Text("地址: 高雄小港區廠邊二路97巷15號"),
//               ),
//             ],
//           ),
//         )
//       ],
//     );
//   }
// }

//Part A AspectRatio 占容器內顯示的比例 x:y
// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("AspectRatio Demo")),
//         body: LayOut(),
//       )
//     );
//   }
// }

// class LayOut extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.grey,
//       width: 411.0,
//       child: AspectRatio(
//         aspectRatio: 2.0/1.0,   //占此容器的比例 x:y
//         child: Container(
//           color: Colors.blueAccent,
//         ),
//       )
//     );
//   }
// }
