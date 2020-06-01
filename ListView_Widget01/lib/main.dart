//PartC 水平圖文列表之有二排  改
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text("橫向列表 DEMO")),
      body: LayOut(),
    ));
  }
}

class LayOut extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
          
              Container(
                height: 180.0,
                child: ListView(
                  scrollDirection: Axis.horizontal, //水平列表 沒設定預設為垂直列表
                  padding: EdgeInsets.all(10.0),
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(10.0),
                      height: 300.0,
                      width: 200.0,
                      child: Image.asset("images/beautifulGirl.jpg"),
                    ),
                    Container(
                      padding: EdgeInsets.all(10.0),
                      height: 300.0,
                      width: 200.0,
                      child: Image.asset("images/beautifulGirl.jpg"),
                    ),
                    Container(
                      padding: EdgeInsets.all(10.0),
                      height: 300.0,
                      width: 200.0,
                      child: Image.asset("images/beautifulGirl.jpg"),
                    ),
                    Container(
                      padding: EdgeInsets.all(10.0),
                      height: 300.0,
                      width: 200.0,
                      child: Image.asset("images/beautifulGirl.jpg"),
                    ),
                    Container(
                      padding: EdgeInsets.all(10.0),
                      height: 300.0,
                      width: 200.0,
                      child: Image.asset("images/beautifulGirl.jpg"),
                    ),
                    Container(
                      padding: EdgeInsets.all(10.0),
                      height: 300.0,
                      width: 200.0,
                      child: Image.asset("images/beautifulGirl.jpg"),
                    ),
                  ],
                ),
              ),

              Container(
                height: 180.0,
                child: ListView(
                  scrollDirection: Axis.horizontal, //水平列表 沒設定預設為垂直列表
                  padding: EdgeInsets.all(10.0),
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(10.0),
                      height: 300.0,
                      width: 200.0,
                      child: Image.asset("images/beautifulGirl.jpg"),
                    ),
                    Container(
                      padding: EdgeInsets.all(10.0),
                      height: 300.0,
                      width: 200.0,
                      child: Image.asset("images/beautifulGirl.jpg"),
                    ),
                    Container(
                      padding: EdgeInsets.all(10.0),
                      height: 300.0,
                      width: 200.0,
                      child: Image.asset("images/beautifulGirl.jpg"),
                    ),
                    Container(
                      padding: EdgeInsets.all(10.0),
                      height: 300.0,
                      width: 200.0,
                      child: Image.asset("images/beautifulGirl.jpg"),
                    ),
                    Container(
                      padding: EdgeInsets.all(10.0),
                      height: 300.0,
                      width: 200.0,
                      child: Image.asset("images/beautifulGirl.jpg"),
                    ),
                    Container(
                      padding: EdgeInsets.all(10.0),
                      height: 300.0,
                      width: 200.0,
                      child: Image.asset("images/beautifulGirl.jpg"),
                    ),
                  ],
                ),
              ),
      ],
    );
  }
}
//PartB
// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("Image ListView Demo"),),
//         body: LayOut(),
//       ),
//     );
//   }
// }

// class LayOut extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       padding: EdgeInsets.all(10.0),

//       children: <Widget>[

//         ListTile(
//           leading: Image.network("https://ku.90sjimg.com/element_origin_min_pic/17/04/04/bcd3b6e95007da8462a8d4c532a559f9.jpg"),
//           title: Text("News Title"),
//           subtitle: Text("News Sub Title"),
//         ),

//         ListTile(
//           leading: Image.network("https://ku.90sjimg.com/element_origin_min_pic/17/04/04/bcd3b6e95007da8462a8d4c532a559f9.jpg"),
//           title: Text("News Title"),
//           subtitle: Text("News Sub Title"),
//         ),

//         ListTile(
//           leading: Image.network("https://ku.90sjimg.com/element_origin_min_pic/17/04/04/bcd3b6e95007da8462a8d4c532a559f9.jpg"),
//           title: Text("News Title"),
//           subtitle: Text("News Sub Title"),
//         ),

//         ListTile(
//           leading: Image.network("https://ku.90sjimg.com/element_origin_min_pic/17/04/04/bcd3b6e95007da8462a8d4c532a559f9.jpg"),
//           title: Text("News Title"),
//           subtitle: Text("News Sub Title"),
//         ),

//         ListTile(   //前後image
//           leading: Image.network("https://image.shutterstock.com/image-photo/bright-spring-view-cameo-island-260nw-1048185397.jpg"),
//           trailing: Image.network("https://ku.90sjimg.com/element_origin_min_pic/17/04/04/bcd3b6e95007da8462a8d4c532a559f9.jpg"),
//           title: Text("News Title"),
//           subtitle: Text("News Sub Title"),
//         ),
//       ],
//     );
//   }
// }

// Part A  普通列表
// import 'package:flutter/material.dart';
// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("ListView Demo")),
//         body: LayOut(),
//       ),
//     );
//   }
// }

// class LayOut extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       padding: EdgeInsets.all(10.0),                //預設為垂直列表
//       children: <Widget>[

//         ListTile(
//           leading: Icon(Icons.new_releases,           //leading 前圖標
//                         color: Colors.purpleAccent,   //圖標設定
//                         size: 50.0,
//                         ),
//           title: Text("全美抗議活動暴力升級　蘋果、亞馬遜、Target宣布關閉部分門市",
//                         style: TextStyle(
//                           fontSize: 18.0,
//                           color: Colors.pinkAccent,
//                         ),),
//           subtitle: Text("非裔男子佛洛伊德（George Floyd）之死引發全美暴動，昨（31）日已有18州27個城市緊急發布宵禁，使蘋果、目標百貨（Target）及亞馬遜旗下的全食超市（Whole Foods）也宣布暫時關閉門市或因應宵禁調整營業時間。"),
//         ),

//         ListTile(
//           trailing: Icon(Icons.home,               //trailing 後圖標
//                         color: Colors.redAccent,
//                         size: 50.0,
//                          ),
//           title: Text("全球股市無視疫情漲不停！花旗警告：與嚴峻現實脫節"),
//           subtitle:Text("武漢肺炎（新型冠狀病毒疾病，COVID-19）對全球經濟造成嚴重衝擊，但在全球近期低迷的經濟數據表現下，全球股市卻自3月低點以來大幅反彈。花旗集團（Citigroup）近日警告，金融市場目前與嚴峻的現實脫節，並呼籲企業客戶應趕在投資者計入這次疫情的真正成本之前，盡可能籌集更多資金。")
//         ),
//         ListTile(
//           title: Text("〈美股早盤〉美5月ISM製造業PMI升至43.1 美股早盤表現平淡"),
//           subtitle: Text("美國總統川普於上週五召開有關中國議題的記者會，宣佈美國將採取行動取消對香港的特殊待遇，但並未提及美中貿易協議議題，暫時緩解了貿易商的擔憂，並令華爾街鬆了一口氣。")
//         ),

//       ],
//     );
//   }
// }
