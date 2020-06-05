//Part E　
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Row Demo")),
        body: LayOut(),
      ),
    );
  }
}

class LayOut extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 200.0,
          width: 400.0,
          color: Colors.black,
        ),

        Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              width:  280.0,
              height: 210.0,
              child: Expanded(
              flex: 2,
              child: Image.network("https://scontent.fkhh1-1.fna.fbcdn.net/v/t1.0-9/74848865_2437800872940714_5065245255058587648_o.jpg?_nc_cat=106&_nc_sid=dd9801&_nc_ohc=BRC-JdrVhasAX-L9Coc&_nc_ht=scontent.fkhh1-1.fna&oh=db88135e25d61a99c56daf54dad439ee&oe=5F01971B"),
            ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(5, 10, 0, 0),
              
              child: Column(
              children: <Widget>[
                Container(width: 120.0,
                          height: 90.0,
                          child: Image.network("https://scontent.fkhh1-2.fna.fbcdn.net/v/t1.0-9/79817409_2529300560457411_1553350320749281280_n.jpg?_nc_cat=107&_nc_sid=110474&_nc_ohc=B2FxuXTUSOIAX8lfSeT&_nc_ht=scontent.fkhh1-2.fna&oh=9c8926fb93cf7d2d2a9d3f84dadbdb08&oe=5EFFAC6F"),
                          ),
              
                Padding(
                  padding: EdgeInsets.fromLTRB(5, 10, 0, 0),
                  child: Container(width: 120.0,
                                  height: 90.0,
                child: Image.network("https://scontent.fkhh1-2.fna.fbcdn.net/v/t1.0-9/83161020_2631030206951112_4697019352082284544_n.jpg?_nc_cat=104&_nc_sid=110474&_nc_ohc=1iMYzniFbNEAX-Hme_g&_nc_ht=scontent.fkhh1-2.fna&oh=dcbe3c77dbaac2d67d47fa14d72abadd&oe=5F0135BA"),
                ),
                  )


              ],
              ),
              )

            ],
            )


        
      ],
    );


  }
}

class IconContainer extends StatelessWidget {
  Color iconColor = Colors.white;
  Color background_Color = Colors.black;
  double icon_size = 50.0;
  IconData icon;
  IconContainer(this.icon,
      {this.iconColor, this.background_Color, this.icon_size});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 100.0,
      color: this.background_Color,
      child: Icon(
        this.icon,
        color: this.iconColor,
        size: this.icon_size,
      ),
    );
  }
}



//Part D Row Column Widget Expanded 配比 Widget

// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("Row Demo")),
//         body: LayOut(),
//       ),
//     );
//   }
// }

// class LayOut extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: <Widget>[
//         Expanded(     //可搭配 Row Colum 使用 分配占用的大小
//           flex: 1, //有定義為 Expanded 下去分配佔的比例
//           child: IconContainer(Icons.home,
//             background_Color: Colors.pinkAccent,
//             icon_size: 45,
//             iconColor: Colors.white),
//         ),

//         Expanded(
//           flex: 1,
//           child:IconContainer(Icons.category,
//             background_Color: Colors.black,
//             icon_size: 45,
//             iconColor: Colors.yellow),
//         ),

//         Expanded(
//           flex: 1,
//           child:IconContainer(Icons.settings,
//             background_Color: Colors.grey,
//             icon_size: 45,
//             iconColor: Colors.white),
//         ),

       

//       ],
//     );
//   }
// }

// class IconContainer extends StatelessWidget {
//   Color iconColor = Colors.white;
//   Color background_Color = Colors.black;
//   double icon_size = 50.0;
//   IconData icon;
//   IconContainer(this.icon,
//       {this.iconColor, this.background_Color, this.icon_size});
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 100.0,
//       height: 100.0,
//       color: this.background_Color,
//       child: Icon(
//         this.icon,
//         color: this.iconColor,
//         size: this.icon_size,
//       ),
//     );
//   }
// }

//Part C Row Widget

// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget{

//   @override
//   Widget build(BuildContext context) {
//     return  MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("Row Demo")),
//         body: LayOut(),
//       ),
//     );
//   }
// }

// class LayOut extends StatelessWidget{

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.blue,
//       height: 600.0,
//       width: 400.0,
//       child: Row(                      //水平排列
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,   //主軸
//       crossAxisAlignment: CrossAxisAlignment.start,       //副軸
//       children: <Widget>[
//         IconContainer(Icons.home, background_Color: Colors.pinkAccent,icon_size: 45,iconColor:Colors.yellow),
//         IconContainer(Icons.settings, background_Color: Colors.black,icon_size: 45,iconColor:Colors.red),
//         IconContainer(Icons.access_alarm, background_Color: Colors.pinkAccent,icon_size: 45,iconColor:Colors.white),
//         // IconContainer(Icons.adb, background_Color: Colors.white,icon_size: 45,iconColor:Colors.black),
//         // IconContainer(Icons.apps, background_Color: Colors.black,icon_size: 45,iconColor:Colors.white),
//         // IconContainer(Icons.bluetooth, background_Color: Colors.grey,icon_size: 45,iconColor:Colors.redAccent),

//       ],
//     ),
//     );
//   }
// }

// class IconContainer extends StatelessWidget{

//   Color iconColor = Colors.white;
//   Color background_Color = Colors.black;
//   double icon_size = 50.0;
//   IconData icon;
//   IconContainer(this.icon,{this.iconColor, this.background_Color, this.icon_size});
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 100.0,
//       height: 100.0,
//       color: this.background_Color,
//       child: Icon(this.icon,
//                   color: this.iconColor,
//                   size: this.icon_size,
//                   ),
//     );
//   }
// }

//Part B  Setting method to create the Icon Container
// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("Row Demo"),),
//         body: LayOut()
//       )
//     );
//   }
// }

// class LayOut extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return IconContainer(Icons.settings, background_color: Colors.blue,size: 50.0,);
//   }
// }

// class IconContainer extends StatelessWidget{
//   double size = 32.0;
//   Color background_color = Colors.black;
//   Color iconColor = Colors.white;
//   IconData  icon;
//   IconContainer(this.icon,{this.size, this.background_color, this.iconColor});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 100.0,
//       height: 100.0,
//       color: this.background_color,
//       child: Icon(this.icon,
//                   size: this.size,
//                   color: this.iconColor,
//                   ),

//     );
//   }
// }

//Part A GrifeView padding Widget
// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("頁面排版 Widget Demo")),
//         body: LayOut(),
//       )
//     );
//   }
// }

// class LayOut extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return Padding(                             //設置邊間距
//       padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
//       child: GridView.count(   //網格排版
//       crossAxisCount: 2,
//       // childAspectRatio: 1.7,   //圖片 x y 比例

//       children: <Widget>[

//         Padding(
//           padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
//           child: Image.network("https://cdn1-digiphoto.techbang.com/system/excerpt_images/9862/inpage/3487c5f3a19271d9fab1238faf518293.jpg?1548392543",fit: BoxFit.cover),
//           ),
//         Padding(
//           padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
//           child: Image.network("https://i2.kknews.cc/SIG=kmegkb/2p3r0001n47soqn35q85.jpg",fit: BoxFit.cover),
//           ),
//         Padding(
//           padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
//           child: Image.network("https://lifestyle.heho.com.tw/wp-content/uploads/2019/11/%E5%8F%B0%E7%81%A3%E7%9A%84%E7%BE%8E_%E7%B2%BE%E9%81%B8.001.jpeg",fit: BoxFit.cover),
//           ),
//         Padding(
//           padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
//           child: Image.network("https://img-fotki.yandex.ru/get/9359/122263170.13f/0_275a9d_92e5e0c7_XXXL.jpg",fit: BoxFit.cover),
//           ),
//         Padding(
//           padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
//           child: Image.network("https://img-fotki.yandex.ru/get/9308/122263170.140/0_275aa5_9b45e5ff_XXXL.jpg",fit: BoxFit.cover),
//           ),
//         Padding(
//           padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
//           child: Image.network("https://img-fotki.yandex.ru/get/9255/122263170.140/0_275aa8_dcf0c7f9_XXXL.jpg",fit: BoxFit.cover),
//           ),
//         Padding(
//           padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
//           child: Image.network("https://i1.kknews.cc/SIG=3lk95j3/ctp-vzntr/3pp437870snn458q8npr75qq42481nq2.jpg",fit: BoxFit.cover),
//           ),
//         Padding(
//           padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
//           child: Image.network("https://i1.kknews.cc/SIG=1qtidge/ctp-vzntr/5q7n499pqs12405qno1881017615ono6.jpg",fit: BoxFit.cover),
//           ),
//           Padding(
//           padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
//           child: Image.network("https://i1.kknews.cc/SIG=1718k0v/ctp-vzntr/opr5qs8466r44np68nn672nq62r50oq0.jpg",fit: BoxFit.cover),
//           ),
//           Padding(
//           padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
//           child: Image.network("https://i2.kknews.cc/SIG=ts308g/ctp-vzntr/0515noo5r60r4o649425srnon605s329.jpg",fit: BoxFit.cover),
//           ),

//       ],

//       ),

//     );

//   }
// }
