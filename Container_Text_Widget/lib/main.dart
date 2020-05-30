import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Flutter Demo")),
        body: LayOut(),
      ),
    );
  }
}

class LayOut extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
                        alignment:  Alignment.center, //內容放置位置
                        //transform 寫法
                        // transform: Matrix4.translationValues(50.0, 0.0, 0.0),//位移
                        // transform: Matrix4.rotationZ(20.0),//旋轉 
                        transform: Matrix4.diagonal3Values(1, 1, 1), //伸展 x, y, z 軸
                        // padding: EdgeInsets.all(10.0), //Container 內邊距
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),//邊距 依序為左上右下距離 
                        margin: EdgeInsets.all(10.0), //Container 外邊距
                        child: Text(
                                      "Flutter Demo",
                                      textAlign: TextAlign.center, //顯示位置
                                      overflow:  TextOverflow.ellipsis,//溢出十顯示方式
                                      maxLines: 3,
                                      style: TextStyle(
                                                        fontSize: 20.0,
                                                        color: Colors.blueAccent,
                                                        fontWeight:  FontWeight.w800,//字體加粗
                                                        fontStyle:  FontStyle.italic,//字體便斜體
                                                        decoration: TextDecoration.lineThrough,//中間劃掉線
                                                        decorationColor: Colors.pink,//中間畫線的color
                                                        decorationStyle: TextDecorationStyle.dashed,//中間畫線便虛線 
                                                        letterSpacing:  10.0, //字間距 
                                                      ),
                                      textScaleFactor: 2,//字體放大倍數
                                    ),
                        height: 200.0,
                        width: 300.0,
                        decoration: BoxDecoration(  //Container背景
                          color: Colors.yellow,
                          border: Border.all(   //Container 邊框
                                            color:Colors.pink, //邊框color
                                            width: 10.0,      //邊框寬度
                                            ),
                          borderRadius:  BorderRadius.all(Radius.circular(50.0)) //Container　邊框圓角 150 = 圓形 但通常不這樣用                
                        ),
                      ),
    );
  }
}
