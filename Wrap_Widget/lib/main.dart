//Wrap Widget 用法
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Wrap Widget Demo")),
        body: LayOut(),
      ),
    );
  }
}


class LayOut extends StatelessWidget {
  const LayOut({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: EdgeInsets.all(10.0),
          child: Container(
                padding: EdgeInsets.all(10.0),
                width: 120.0,
                height: 750.0,
                color: Colors.redAccent,
                child: Wrap(    //超出一行會自動換行
                      spacing: 10.0, //左右間距
                      runSpacing: 20.0,   //上下行間距
                      // textDirection: TextDirection.rtl,    //右到左排列
                      // direction: Axis.vertical, //縱軸  預設為橫軸
                      runAlignment: WrapAlignment.center,   // Y 軸排列方式
                        children: <Widget>[
                          MyButton("波羅蜜"),
                          MyButton("金煌芒果"),
                          MyButton("西施芒果"),
                          MyButton("土芒果"),
                          MyButton("紅心芭樂"),
                          MyButton("香水檸檬"),
                          MyButton("棗子"),
                          MyButton("番茄"),
                          MyButton("榴槤蜜"),
                          MyButton("波羅蜜"),
                          MyButton("金煌芒果"),
                          MyButton("西施芒果"),
                          MyButton("土芒果"),
                          MyButton("紅心芭樂"),
                          MyButton("香水檸檬"),
                          MyButton("棗子"),
                        ],
                      ),
              ),
    );
  
  } 
}
class MyButton extends StatelessWidget{
  final String text;

  const MyButton(this.text,{Key key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(this.text),
      textColor: Theme.of(context).accentColor,
      onPressed: (){

      },
    );
  }
}